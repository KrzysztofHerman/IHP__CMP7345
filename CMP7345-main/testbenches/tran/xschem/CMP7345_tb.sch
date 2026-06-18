v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1580 -1720 2380 -1320 {flags=graph
y1=0.59652778
y2=0.60416667
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5742264e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=7.7199545e-08
color="4 7"
node="vp
vm"
sim_type=tran
}
B 2 1580 -1310 2380 -910 {flags=graph
y1=-0.0034
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5742264e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=7.7199545e-08
color="8 4"
node="IsHigh
clk"
sim_type=tran
hilight_wave=2
}
B 2 1580 -900 2380 -500 {flags=graph
y1=-0.14
y2=0.14
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5742264e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=7.7199545e-08
sim_type=tran
color=1
node="\\"ddif;x1.p  x1.q -\\""}
B 2 680 -990 1480 -590 {flags=graph
y1=-0.043
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5742264e-08

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=7.7199545e-08
sim_type=tran
color="6 4 5 6 8"
node="X1.p
x1.q
vout1
vout2
clk"
hilight_wave=-1}
N 55 -970 55 -940 {
lab=vp}
N 55 -1115 55 -1085 {
lab=vdd}
N 55 -1025 55 -1005 {
lab=GND}
N 855 -1275 855 -1255 {
lab=vss}
N 855 -1405 855 -1375 {
lab=vdd}
N 705 -1355 775 -1355 {
lab=vp}
N 705 -1295 775 -1295 {
lab=vm}
N 55 -1005 155 -1005 {lab=GND}
N 155 -1025 155 -1005 {lab=GND}
N 155 -1115 155 -1085 {lab=vss}
N 945 -1295 1075 -1295 {lab=vout2}
N 945 -1315 945 -1295 {lab=vout2}
N 925 -1315 945 -1315 {lab=vout2}
N 925 -1335 945 -1335 {lab=vout1}
N 945 -1355 1075 -1355 {lab=vout1}
N 945 -1355 945 -1335 {lab=vout1}
N 90 -710 90 -680 {
lab=clk}
N 160 -970 160 -935 {
lab=vm}
N 95 -860 95 -850 {lab=#net1}
N 55 -880 55 -860 {lab=#net1}
N 705 -1325 775 -1325 {lab=clk}
N 1210 -1195 1210 -1180 {lab=vss}
N 1300 -1180 1305 -1180 {lab=vss}
N 1260 -1180 1260 -1170 {lab=vss}
N 1210 -1180 1260 -1180 {lab=vss}
N 1155 -1295 1210 -1295 {lab=IsLow}
N 1300 -1355 1300 -1255 {lab=IsHigh}
N 1300 -1355 1310 -1355 {lab=IsHigh}
N 1210 -1295 1210 -1255 {lab=IsLow}
N 1260 -1180 1300 -1180 {lab=vss}
N 1155 -1355 1300 -1355 {lab=IsHigh}
N 1210 -1295 1310 -1295 {lab=IsLow}
N 1300 -1195 1300 -1180 {lab=vss}
N 55 -860 95 -860 {lab=#net1}
N 95 -860 160 -860 {lab=#net1}
N 160 -875 160 -860 {lab=#net1}
C {vsource.sym} 55 -1055 0 0 {name=VDD value="DC 1.2"}
C {lab_pin.sym} 855 -1405 1 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 55 -1115 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 55 -970 0 0 {name=p3 sig_type=std_logic lab=vp}
C {lab_pin.sym} 705 -1355 0 0 {name=p5 sig_type=std_logic lab=vp}
C {lab_pin.sym} 705 -1295 0 0 {name=p6 sig_type=std_logic lab=vm}
C {capa.sym} 1210 -1225 0 0 {name=Cload
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/code_shown.sym} 10 -1730 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerDIO.lib dio_tt
.lib cornerRES.lib res_typ
.INCLUDE sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 10 -1570 0 0 {name=NGSPICE only_toplevel=false 
value="
.options cshunt=20f
.options rseries=1
.control
save all
shell rm tran.raw
tran  10p 120n 
meas tran tdly TRIG v(clk) VAL=0.6 RISE=11 TARG v(IsHigh) VAL=0.6 RISE=5
*let difpq=x1.p-x1.q 
write tran.raw 
.endc
"}
C {launcher.sym} 1640 -450 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tran.raw tran"
}
C {title-3.sym} 0 0 0 0 {name=l16 author="IHP-GmbH 2026" title="Strong ARM Latch transisnt simulation" rev=1.0 lock=true}
C {CMP7345.sym} 845 -1325 0 0 {name=x1}
C {lab_pin.sym} 855 -1255 3 0 {name=p4 sig_type=std_logic lab=vss}
C {vsource.sym} 155 -1055 0 0 {name=VDD1 value="DC 0.0"}
C {lab_pin.sym} 155 -1115 0 0 {name=p7 sig_type=std_logic lab=vss}
C {gnd.sym} 105 -1005 0 0 {name=l2 lab=GND}
C {capa.sym} 1300 -1225 0 0 {name=Cload1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 985 -1355 1 0 {name=p8 sig_type=std_logic lab=vout1}
C {lab_pin.sym} 985 -1295 3 0 {name=p9 sig_type=std_logic lab=vout2}
C {lab_pin.sym} 705 -1325 0 0 {name=p11 sig_type=std_logic lab=clk}
C {vsource.sym} 90 -650 0 0 {name=V2 value="PULSE( 0 1.2 0.0N 10P 10P 5N \{(5N)+(5N)+(10P)+(10P)\} )"
}
C {gnd.sym} 90 -620 0 0 {name=l3 lab=GND
value="PULSE( 0 1.2 17.5N 10P 10P 5N \{(5N)+(5N)+(10P)+(10P)\} )  AC 0"}
C {lab_pin.sym} 90 -710 0 0 {name=p12 sig_type=std_logic lab=clk}
C {vsource.sym} 55 -910 0 0 {name=V3 value=0}
C {lab_pin.sym} 160 -970 0 0 {name=p13 sig_type=std_logic lab=vm}
C {vsource.sym} 95 -820 0 0 {name=VDD2 value="DC 0.6"}
C {gnd.sym} 95 -790 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1310 -1295 2 0 {name=p17 sig_type=std_logic lab=IsLow}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1115 -1355 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1115 -1295 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 1310 -1355 2 0 {name=p20 sig_type=std_logic lab=IsHigh}
C {lab_pin.sym} 1260 -1170 3 0 {name=p18 sig_type=std_logic lab=vss}
C {vsource.sym} 160 -905 0 0 {name=V4 value="PWL(0 10m 120n -10m)"}
