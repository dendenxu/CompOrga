/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ISE Project/CO_Lab2/CO_Lab2_Prg1/v/SHIFT64.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Always_17_0(char *t0)
{
    char t4[8];
    char t13[24];
    char t14[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 3760);
    *((int *)t2) = 1;
    t3 = (t0 + 3472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(18, ng0);

LAB5:    xsi_set_current_line(19, ng0);
    t5 = (t0 + 1960U);
    t6 = *((char **)t5);
    t5 = (t0 + 1800U);
    t7 = *((char **)t5);
    xsi_vlogtype_concat(t4, 2, 2, 2U, t7, 1, t6, 1);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(20, ng0);
    t9 = (t0 + 2520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 65, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(21, ng0);
    t3 = (t0 + 2520);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    xsi_vlog_get_part_select_value(t14, 64, t6, 64, 1);
    t7 = (t0 + 1480U);
    t9 = *((char **)t7);
    xsi_vlogtype_concat(t13, 65, 65, 2U, t9, 1, t14, 64);
    t7 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t7, t13, 0, 0, 65, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(22, ng0);
    t3 = (t0 + 1640U);
    t5 = *((char **)t3);
    t3 = (t0 + 2520);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_get_part_select_value(t14, 64, t7, 63, 0);
    xsi_vlogtype_concat(t13, 65, 65, 2U, t14, 64, t5, 1);
    t9 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t9, t13, 0, 0, 65, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(23, ng0);
    t3 = (t0 + 2120U);
    t5 = *((char **)t3);
    t3 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 65, 0LL);
    goto LAB15;

}


extern void work_m_00000000001412551765_3851109030_init()
{
	static char *pe[] = {(void *)Always_17_0};
	xsi_register_didat("work_m_00000000001412551765_3851109030", "isim/Top_test_isim_beh.exe.sim/work/m_00000000001412551765_3851109030.didat");
	xsi_register_executes(pe);
}
