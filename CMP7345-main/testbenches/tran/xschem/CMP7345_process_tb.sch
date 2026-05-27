v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1685 -1760 2485 -1360 {flags=graph
y1=0.59
y2=0.61
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7345037e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=3.4753185e-08
color="4 7"
node="vp
vm"
sim_type=tran
}
B 2 1685 -1350 2485 -950 {flags=graph
y1=-0.0069
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7345037e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=3.4753185e-08
color=8
node=IsHigh
sim_type=tran
hilight_wave=0
rainbow=1
digital=0}
B 2 1685 -940 2485 -540 {flags=graph
y1=-0.3
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7345037e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=3.4753185e-08
sim_type=tran
color="6 4"
node="IsLow

\\"ddif;x1.p  x1.q -\\""
hilight_wave=-1
mode=Line
rainbow=1
}
B 2 25 -759.0608915763987 1435 -249.0608915763987 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7345037e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=3.4753185e-08
sim_type=tran
color="9 4"
node="\\"outdiff; vout1 vout2 - abs()\\"
clk"
hilight_wave=-1}
B 2 25 -1365 1435 -755 {flags=graph
y1=-0.022
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7345037e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=3.4753185e-08
sim_type=tran
color="9 4 5 6 8"
node="X1.p
x1.q
vout1
vout2
clk"
hilight_wave=-1}
N 325 -205 325 -175 {
lab=vp}
N 615 -155 615 -125 {
lab=vdd}
N 615 -65 615 -45 {
lab=GND}
N 910 -1550 910 -1530 {
lab=vss}
N 910 -1680 910 -1650 {
lab=vdd}
N 760 -1630 830 -1630 {
lab=vp}
N 760 -1570 830 -1570 {
lab=vm}
N 615 -45 715 -45 {lab=GND}
N 715 -65 715 -45 {lab=GND}
N 715 -155 715 -125 {lab=vss}
N 1000 -1570 1130 -1570 {lab=vout2}
N 1000 -1590 1000 -1570 {lab=vout2}
N 980 -1590 1000 -1590 {lab=vout2}
N 980 -1610 1000 -1610 {lab=vout1}
N 1000 -1630 1130 -1630 {lab=vout1}
N 1000 -1630 1000 -1610 {lab=vout1}
N 845 -155 845 -125 {
lab=clk}
N 425 -205 425 -175 {
lab=vm}
N 375 -95 375 -85 {lab=#net1}
N 325 -115 325 -95 {lab=#net1}
N 425 -115 425 -95 {lab=#net1}
N 760 -1600 830 -1600 {lab=clk}
N 1265 -1470 1265 -1455 {lab=vss}
N 1315 -1455 1315 -1445 {lab=vss}
N 1265 -1455 1315 -1455 {lab=vss}
N 1210 -1570 1265 -1570 {lab=IsLow}
N 1355 -1630 1355 -1530 {lab=IsHigh}
N 1355 -1630 1365 -1630 {lab=IsHigh}
N 1265 -1570 1265 -1530 {lab=IsLow}
N 1210 -1630 1355 -1630 {lab=IsHigh}
N 1265 -1570 1365 -1570 {lab=IsLow}
N 1355 -1470 1355 -1455 {lab=vss}
N 1315 -1455 1355 -1455 {lab=vss}
N 375 -95 425 -95 {lab=#net1}
N 325 -95 375 -95 {lab=#net1}
C {vsource.sym} 615 -95 0 0 {name=VDD value="DC 1.2"}
C {lab_pin.sym} 910 -1680 1 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 615 -155 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 325 -205 0 0 {name=p3 sig_type=std_logic lab=vp}
C {lab_pin.sym} 760 -1630 0 0 {name=p5 sig_type=std_logic lab=vp}
C {lab_pin.sym} 760 -1570 0 0 {name=p6 sig_type=std_logic lab=vm}
C {capa.sym} 1265 -1500 0 0 {name=Cload
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 10 -1730 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt_stat
.INCLUDE sg13g2_stdcell.spice
.lib cornerDIO.lib dio_tt
.lib cornerRES.lib res_stat
"}
C {launcher.sym} 1740 -515 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tran.raw tran"
}
C {title-3.sym} 0 0 0 0 {name=l16 author="IHP-GmbH 2026" title="Strong ARM Latch process variation analysis" rev=1.0 lock=true}
C {CMP7345.sym} 900 -1600 0 0 {name=x1}
C {lab_pin.sym} 910 -1530 3 0 {name=p4 sig_type=std_logic lab=vss}
C {vsource.sym} 715 -95 0 0 {name=VDD1 value="DC 0.0"}
C {lab_pin.sym} 715 -155 0 0 {name=p7 sig_type=std_logic lab=vss}
C {gnd.sym} 665 -45 0 0 {name=l2 lab=GND}
C {capa.sym} 1355 -1500 0 0 {name=Cload1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1040 -1630 1 0 {name=p8 sig_type=std_logic lab=vout1}
C {lab_pin.sym} 1040 -1570 3 0 {name=p9 sig_type=std_logic lab=vout2}
C {lab_pin.sym} 760 -1600 0 0 {name=p11 sig_type=std_logic lab=clk}
C {vsource.sym} 845 -95 0 0 {name=V2 value="PULSE( 0 1.2 0.0N 10P 10P 5N \{(5N)+(5N)+(10P)+(10P)\} )  AC 0"
}
C {gnd.sym} 845 -65 0 0 {name=l3 lab=GND
value="PULSE( 0 1.2 17.5N 10P 10P 5N \{(5N)+(5N)+(10P)+(10P)\} )  AC 0"}
C {lab_pin.sym} 845 -155 0 0 {name=p12 sig_type=std_logic lab=clk}
C {vsource.sym} 325 -145 0 0 {name=V3 value=0}
C {lab_pin.sym} 425 -205 0 0 {name=p13 sig_type=std_logic lab=vm}
C {vsource.sym} 375 -55 0 0 {name=VDD2 value="DC 0.6"}
C {gnd.sym} 375 -25 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1365 -1570 2 0 {name=p17 sig_type=std_logic lab=IsLow}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1170 -1630 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1170 -1570 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 1365 -1630 2 0 {name=p20 sig_type=std_logic lab=IsHigh}
C {lab_pin.sym} 1315 -1445 3 0 {name=p18 sig_type=std_logic lab=vss}
C {vsource.sym} 425 -145 0 0 {name=V4 value="PWL(0 10m 120n -10m)"}
C {simulator_commands.sym} 10 -1580 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.options cshunt=20f
.options rseries=1
.control
  shell rm tran.raw
  let mc_runs = 20
  let run = 0
  set curplot=new          
  set scratch=$curplot    
  set appendwrite
  let vh=unitvec(mc_runs)
  let vl=unitvec(mc_runs)
  let td=unitvec(mc_runs)
  let teval=66n
  let vtdly=unitvec(mc_runs)

  dowhile run < mc_runs   
    reset
    tran 10p 120n
    meas tran vh1 find v(vout1) at=73n
    meas tran vl1 find v(vout2) at=73n
    meas tran tdly TRIG v(clk) VAL=0.6 RISE=2 TARG v(vout2) VAL=0.6 FALL=2
	    
    set run = $&run   
    set plt = $curplot          
    setplot $scratch       
    let vvd\{$run\} = \{$plt\}.v(vout1)
    let vh[run]=\{$plt\}.vh1
    let vl[run]=\{$plt\}.vl1
    let vtdly[run]=\{$plt\}.tdly	    
    setplot $plt
    let run = run + 1
    write tran.raw
    end  
let vdv=vp-vm
meas tran vdiff find v(vdv) at=73n
print \{$scratch\}.vtdly 
wrdata distribution.csv \{$scratch\}.vh \{$scratch\}.vl
.endc
"}
