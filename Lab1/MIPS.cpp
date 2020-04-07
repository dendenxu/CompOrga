#include <bitset>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include <set>
#include <sstream>
#include <string>
#include <vector>

using namespace std;
class MIPSAssembler
{
    // This small structure is for easily declaring different part of an instruction
    struct inst {
        char format; // Format or an instruction(R, I or J)
        int op;      // Opcode of an instruction
        int funct;   // Funct code of an instruction
    };
    void ChangeFormat(string &str);                                                    // Convert tightly spaced string to the asked form
    void DiscardLine(stringstream &str_stream);                                        // Discard current line until \n or EOF
    bool CheckLineEnd(stringstream &str_stream);                                       // When the recognition of one full instruction is done, check current line for extra char
    void Trim(stringstream &str_stream, char ch);                                      // Discard a certain character, usually space
    bool Assert(stringstream &str_stream, char ch);                                    // return false if the next character is not what we expected
    bool TrimAssert(stringstream &str_stream, char trim, char assert);                 // Trim a certain char, assert if the next is not expected, then trim the char again. Usually for "\s*,\s*"
    void GetToken(stringstream &str_stream, string &str);                              // Get a token until reserved char is encountered. Usually a register
    bool ReadRegister(stringstream &str_stream, map<string, int>::iterator &reg_iter); // Get a token and try to map it to an actual register. Returns false if map is unsuccessful
    bool ReadConstant(stringstream &str_stream, int &constant);                        // Read in a constant. Using stream
    bool Linux_warning = false;

  public:
    /**
     * Using map can give us a clear interface for the instructions in case we want to add or delete or modify them
     * For instructions of format 'J' and 'I', we use 0 to fulfill the empty block that will not be used
     * We've considered using enum, but found it unnecessary
     */
    bool AssembleMIPS();           // Core method and the only method exposed. Returns false if the assembling is unsuccessful
    stringstream input, output;    // string stream for storing input and output
    map<string, inst> inst_map;    // inst_map: Instruction Map, maps a string representation of an instruction to its corresponding format and opcode/function
    map<string, int> reg_map;      // reg_map: Register Map, maps a string representation of a register to its corresponding register number
    set<char> reserved_char;       // Reversed characters that should be considered an end for token recognition
    int init_line_number = 0x1000; // The counter to add at the beginning of a line
    int source_line_number = 1;    // Counter for source code file line number
};

int main(int argc, char **argv)
{
    string input_file_name = "my1.asm";
    string output_file_name = "my1.txt";
    if (argc >= 2) input_file_name = argv[1];
    if (argc >= 3) output_file_name = argv[2];
    MIPSAssembler A;                      // Instantiate the MIPS assembler
    ifstream input_file(input_file_name); // open input file
    if (!input_file.is_open()) {
        cerr << "FATAL: Unable to open the file specified for input: \"" << input_file_name << '\"' << endl;
        return 2;
    }
    A.input << input_file.rdbuf(); // load filestream content
    input_file.close();            // Close input file

    // Open output file
    ofstream output_file(output_file_name);
    if (!output_file.is_open()) {
        cerr << "FATAL: Unable to open the file specified for output: \"" << output_file_name << '\"' << endl;
        return 3;
    }

    // Initializing constants
    A.init_line_number = 0x1000;
    A.reserved_char = {',', '#', '(', ')', ' ', EOF, '\n', '\r'};
    A.inst_map = {
        {"add", {'R', 0, 32}},
        {"sub", {'R', 0, 34}},
        {"lw",  {'I', 35, 0}},
        {"sw",  {'I', 43, 0}},
        {"and", {'R', 0, 36}},
        {"or",  {'R', 0, 37}},
        {"nor", {'R', 0, 39}},
        {"andi",{'I', 12, 0}},
        {"ori", {'I', 13, 0}},
        {"sll", {'R', 0,  0}},
        {"srl", {'R', 0,  2}},
        {"beq", {'I', 4,  0}},
        {"bne", {'I', 5,  0}},
        {"slt", {'R', 0, 42}},
        {"j",   {'J', 2,  0}},
        {"jr",  {'R', 0,  8}},
        {"jal", {'J', 3,  0}},
        {"addi",{'I', 8,  0}},
        {"lb",  {'I', 32, 0}},
        {"sb",  {'I', 40, 0}},
    };
    A.reg_map = {
        {"$zero",0},
        {"$at",  1},
        {"$v0",  2},
        {"$v1",  3},
        {"$a0",  4},
        {"$a1",  5},
        {"$a2",  6},
        {"$a3",  7},
        {"$t0",  8},
        {"$t1",  9},
        {"$t2", 10},
        {"$t3", 11},
        {"$t4", 12},
        {"$t5", 13},
        {"$t6", 14},
        {"$t7", 15},
        {"$s0", 16},
        {"$s1", 17},
        {"$s2", 18},
        {"$s3", 19},
        {"$s4", 20},
        {"$s5", 21},
        {"$s6", 22},
        {"$s7", 23},
        {"$t8", 24},
        {"$t9", 25},
        {"$k0", 26},
        {"$k1", 27},
        {"$gp", 28},
        {"$sp", 29},
        {"$fp", 30},
        {"$ra", 31},
    };

    // Execute convertion
    if (A.AssembleMIPS()) {

        A.output.seekg(0, ios::beg);            // Change output stream pointer position
        output_file << A.output.rdbuf();        // Save output string stream to file stream
        output_file.close();                    // Close output file
        cout << "Assembly successful." << endl; // Successful prompt
        cout << "Input file is: \"" << input_file_name << '\"' << endl;
        cout << "Output file is: \"" << output_file_name << '\"' << endl;
        return 0;

    } else {

        cerr << "FATAL: Illegal instruction or format. Check your syntax." << endl; // Error prompt
        A.output.seekg(0, ios::beg);                                                // Change output stream pointer position
        cout << "DUMP: Current line of input stringstream is:" << endl;             // Dump current input string stream
        A.input.clear();
        while (A.input.peek() != '\n' && A.input.tellg()) A.input.unget();
        A.input.get();
        string buffer;
        getline(A.input, buffer);
        cout << buffer << endl;                                                   // Dump current input line
        cout << "DUMP: Current line number is: " << A.source_line_number << endl; // Dump current line number
        cout << "DUMP: Current buffer of output stringstream is:" << endl;        // Dump current output string stream
        cout << A.output.rdbuf() << endl;                                         // Dump current output string stream

        output_file << A.output.rdbuf(); // Dump the stringstream to file
        output_file.close();             // Close output file
        return 1;
    }
}

void MIPSAssembler::ChangeFormat(string &str)
{
    str.append(str); // Duplicate string
    /**
     * Add space correspondingly
     * Note that string::insert will insert things at the front of the postion specified
     * that is, inserting at string::end() is legal, while inserting at string::begin() is not
     */
    str.insert(8,       1, ' ');
    str.insert(16 + 1,  1, ' ');
    str.insert(24 + 2,  1, ' ');
    str.insert(32 + 3,  6, ' ');
    str.insert(38 + 9,  1, ' ');
    str.insert(43 + 10, 1, ' ');
    str.insert(48 + 11, 1, ' ');
    str.insert(53 + 12, 1, ' ');
    str.insert(58 + 13, 1, ' ');
}

void MIPSAssembler::DiscardLine(stringstream &str_stream)
{
    source_line_number++;
    while ((str_stream.get() != '\n') && (!str_stream.eof()))
        ;
}

bool MIPSAssembler::CheckLineEnd(stringstream &str_stream)
{
    Trim(str_stream, ' ');
    if (str_stream.peek() == '#' || str_stream.peek() == '\n') {
        DiscardLine(input);
        return true;
    } else if (str_stream.peek() == '\r') {
        if (!Linux_warning) {
            Linux_warning = true;
            cerr << "WARNING: Processing CRLF file on Linux system." << endl;
        }
        str_stream.get();
        if (str_stream.peek() != '\n') {
            cerr << "FATAL: Carrige Return encountered, however no Line Feed is found, file corrupted." << endl;
            return false;
        }
        DiscardLine(input);
        return true;
    } else if (str_stream.peek() != EOF) {
        cerr << "FATAL: Unexpected line end." << endl;
        return false;
    } else
        return true;
}

void MIPSAssembler::Trim(stringstream &str_stream, char ch)
{
    while (str_stream.get() == ch) // Will consume an extra character, so we put it back
        ;
    str_stream.unget();
}

bool MIPSAssembler::Assert(stringstream &str_stream, char ch)
{
    if (str_stream.get() == ch) return true; // Get next character an validate it
    cerr << "FATAL: Unable to read the character: " << ch << endl;
    return false;
}

bool MIPSAssembler::TrimAssert(stringstream &str_stream, char trim, char assert)
{
    Trim(input, trim);
    if (!Assert(str_stream, assert)) return false;
    Trim(input, trim);
    return true;
}

void MIPSAssembler::GetToken(stringstream &str_stream, string &str)
{
    str.clear();                                                                     // Clear string buffer
    while (!reserved_char.count(str_stream.peek())) str.push_back(str_stream.get()); // Get char if not reserved
}

bool MIPSAssembler::ReadConstant(stringstream &str_stream, int &constant)
{
    if ((str_stream >> constant)) return true; // Try interpreting the string into an integer
    cerr << "FATAL: Unable to read the constant." << endl;
    return false;
}

bool MIPSAssembler::ReadRegister(stringstream &str_stream, map<string, int>::iterator &reg_iter)
{
    string str;
    GetToken(input, str);

    // Return false if we cannot map the string to a register
    if ((reg_iter = reg_map.find(str)) != reg_map.end()) return true;
    cerr << "FATAL: Unable to map register: " << str << " to int value." << endl;
    return false;
}

bool MIPSAssembler::AssembleMIPS()
{
#define PROCESS_REGISTER(reg_iter) \
    if (!ReadRegister(input, (reg_iter))) return false;

#define PROCESS_FIRST_REGISTER(reg_iter) \
    Trim(input, ' ');                    \
    PROCESS_REGISTER(reg_iter)

#define PROCESS_OTHER_REGISTER(ch, reg_iter)         \
    if (!TrimAssert(input, ' ', (ch))) return false; \
    PROCESS_REGISTER(reg_iter)

#define PROCESS_CONSTANT(width, scale)                                  \
    if (!ReadConstant(input, constant)) return false;                   \
    if (constant % (scale)) {                                           \
        cout << "FATAL: Address " << constant << " is illegal" << endl; \
        return false;                                                   \
    }                                                                   \
    output << bitset<(width)>(constant / (scale));

#define PROCESS_FIRST_CONSTANT(width, scale) \
    Trim(input, ' ');                        \
    PROCESS_CONSTANT(width, scale)

#define PROCESS_OTHER_CONSTANT(ch, width, scale)     \
    if (!TrimAssert(input, ' ', (ch))) return false; \
    PROCESS_CONSTANT(width, scale)

    int constant;                           // A constant
    string str;                             // General purpose string
    map<string, inst>::iterator inst_iter;  // Reserve the result of std::map::find
    map<string, int>::iterator reg_iter_rs; // Reserve the result of std::map::find
    map<string, int>::iterator reg_iter_rt; // Reserve the result of std::map::find
    map<string, int>::iterator reg_iter_rd; // Reserve the result of std::map::find
    while (1) {
        // Skip comment and empty line and discard leading space
        Trim(input, ' ');
        if (input.peek() == '#' || input.peek() == '\n') {
            DiscardLine(input);
            continue;
        } else if (input.peek() == '\r') {
            if (!Linux_warning) {
                Linux_warning = true;
                cerr << "WARNING: Processing CRLF file on Linux system." << endl;
            }
            input.get();
            if (input.peek() != '\n') {
                cerr << "FATAL: Carrige Return encountered, however no Line Feed is found, file corrupted." << endl;
                return false;
            }
            DiscardLine(input);
            continue;
        }

        GetToken(input, str);                                // Try getting the first token(instruction)
        if (str.empty() && input.peek() == EOF) return true; // If the EOF is encountered when trying to get a token, we should stop

        output << setbase(16) << init_line_number << ':'; // Output line number
        init_line_number += 4;                            // Increment the line number

        if ((inst_iter = inst_map.find(str)) == inst_map.end()) {
            cerr << "FATAL: Unable to map instruction: \"" << str << "\" in instruction map." << endl;
            return false;
        }                                            // Return false if we cannot map the string to an instruction
        output << bitset<6>((*inst_iter).second.op); // Output opcode if instruction is found

        switch ((*inst_iter).second.format) {
        case 'R':
            if ((*inst_iter).first == "jr") {

                PROCESS_FIRST_REGISTER(reg_iter_rd)
                output << bitset<5>((*(reg_iter_rd)).second);
                for (int i = 0; i < 3; i++) output << bitset<5>(0); // Zero fill

            } else if (((*inst_iter).first == "sll") || ((*inst_iter).first == "srl")) {

                // Similar implementation as the I format(only these two instructions are of I format)
                output << bitset<5>(0); // First five bit of sll and srl is filled with zero
                PROCESS_FIRST_REGISTER(reg_iter_rt)
                PROCESS_OTHER_REGISTER(',', reg_iter_rs)
                output << bitset<5>((*(reg_iter_rs)).second);
                output << bitset<5>((*(reg_iter_rt)).second);
                PROCESS_OTHER_CONSTANT(',', 5, 1)

            } else {

                // Process the first register
                PROCESS_FIRST_REGISTER(reg_iter_rd)

                // Process two more register
                PROCESS_OTHER_REGISTER(',', reg_iter_rs)
                PROCESS_OTHER_REGISTER(',', reg_iter_rt)
                output << bitset<5>((*(reg_iter_rs)).second);
                output << bitset<5>((*(reg_iter_rt)).second);
                output << bitset<5>((*(reg_iter_rd)).second);
                output << bitset<5>(0); // Output shamt
            }

            // Output funct code of an instruction
            output << bitset<6>((*inst_iter).second.funct);
            break;

        case 'I':

            if (set<string>({"lw", "sw", "lb", "sb"}).count((*inst_iter).first)) {

                PROCESS_FIRST_REGISTER(reg_iter_rt)
                PROCESS_OTHER_CONSTANT(',', 0, 1)
                PROCESS_OTHER_REGISTER('(', reg_iter_rs)
                output << bitset<5>((*(reg_iter_rs)).second);
                output << bitset<5>((*(reg_iter_rt)).second);
                output << bitset<16>(constant);
                if (!TrimAssert(input, ' ', ')')) return false;

            } else {

                PROCESS_FIRST_REGISTER(reg_iter_rt)
                PROCESS_OTHER_REGISTER(',', reg_iter_rs)
                output << bitset<5>((*(reg_iter_rs)).second);
                output << bitset<5>((*(reg_iter_rt)).second);
                PROCESS_OTHER_CONSTANT(',', 16, ((*inst_iter).first == "beq") || ((*inst_iter).first == "bne") ? 4 : 1)
            }
            break;

        case 'J':
            Trim(input, ' ');
            // Read in the constant(immediate value)
            PROCESS_CONSTANT(26, 4)
            break;
        }
        if (!CheckLineEnd(input)) return false;
        // Splitting the machine code we've generated
        output << endl;                  // Append a newline for getline to work
        output.seekg(-32 - 1, ios::end); // Change stream input pointer
        getline(output, str);            // Store whole line
        ChangeFormat(str);               // Reformat
        output.seekp(-32 - 1, ios::end); // Change stream output pointer
        output << str;                   // Append the formatted string
        output << endl;                  // previous newline character is consumed by getline
    }
    return true; // Assembly success
}