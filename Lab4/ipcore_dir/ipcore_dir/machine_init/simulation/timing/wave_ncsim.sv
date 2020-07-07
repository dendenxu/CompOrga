
 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"


      waveform add -signals /machine_init_tb/status
      waveform add -signals /machine_init_tb/machine_init_synth_inst/bmg_port/CLKA
      waveform add -signals /machine_init_tb/machine_init_synth_inst/bmg_port/ADDRA
      waveform add -signals /machine_init_tb/machine_init_synth_inst/bmg_port/DINA
      waveform add -signals /machine_init_tb/machine_init_synth_inst/bmg_port/WEA
      waveform add -signals /machine_init_tb/machine_init_synth_inst/bmg_port/DOUTA
console submit -using simulator -wait no "run"
