v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {The results of the simulations are in  simulations/file } 780 -1170 0 0 0.4 0.4 {}
N 435 -1020 435 -990 {
lab=vp}
N 435 -1165 435 -1135 {
lab=vdd}
N 435 -1075 435 -1055 {
lab=GND}
N 945 -955 945 -935 {
lab=vss}
N 945 -1085 945 -1055 {
lab=vdd}
N 795 -1035 865 -1035 {
lab=vp}
N 795 -975 865 -975 {
lab=vm}
N 435 -1055 535 -1055 {lab=GND}
N 535 -1075 535 -1055 {lab=GND}
N 535 -1165 535 -1135 {lab=vss}
N 1035 -975 1165 -975 {lab=vout2}
N 1035 -995 1035 -975 {lab=vout2}
N 1015 -995 1035 -995 {lab=vout2}
N 1015 -1015 1035 -1015 {lab=vout1}
N 1035 -1035 1165 -1035 {lab=vout1}
N 1035 -1035 1035 -1015 {lab=vout1}
N 470 -760 470 -730 {
lab=clk}
N 540 -1020 540 -985 {
lab=vm}
N 475 -910 475 -900 {lab=#net1}
N 435 -930 435 -910 {lab=#net1}
N 795 -1005 865 -1005 {lab=clk}
N 1300 -875 1300 -860 {lab=vss}
N 1390 -860 1395 -860 {lab=vss}
N 1350 -860 1350 -850 {lab=vss}
N 1300 -860 1350 -860 {lab=vss}
N 1245 -975 1300 -975 {lab=IsLow}
N 1390 -1035 1390 -935 {lab=IsHigh}
N 1390 -1035 1400 -1035 {lab=IsHigh}
N 1300 -975 1300 -935 {lab=IsLow}
N 1350 -860 1390 -860 {lab=vss}
N 1245 -1035 1390 -1035 {lab=IsHigh}
N 1300 -975 1400 -975 {lab=IsLow}
N 1390 -875 1390 -860 {lab=vss}
N 435 -910 475 -910 {lab=#net1}
N 475 -910 540 -910 {lab=#net1}
N 540 -925 540 -910 {lab=#net1}
C {vsource.sym} 435 -1105 0 0 {name=VDD value="DC 1.2"}
C {lab_pin.sym} 945 -1085 1 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 435 -1165 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 435 -1020 0 0 {name=p3 sig_type=std_logic lab=vp}
C {lab_pin.sym} 795 -1035 0 0 {name=p5 sig_type=std_logic lab=vp}
C {lab_pin.sym} 795 -975 0 0 {name=p6 sig_type=std_logic lab=vm}
C {capa.sym} 1300 -905 0 0 {name=Cload
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
C {title-3.sym} 0 0 0 0 {name=l16 author="IHP-GmbH 2026" title="Strong ARM Latch OP analysis" rev=1.0 lock=true}
C {CMP7345.sym} 935 -1005 0 0 {name=x1}
C {lab_pin.sym} 945 -935 3 0 {name=p4 sig_type=std_logic lab=vss}
C {vsource.sym} 535 -1105 0 0 {name=VDD1 value="DC 0.0"}
C {lab_pin.sym} 535 -1165 0 0 {name=p7 sig_type=std_logic lab=vss}
C {gnd.sym} 485 -1055 0 0 {name=l2 lab=GND}
C {capa.sym} 1390 -905 0 0 {name=Cload1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1075 -1035 1 0 {name=p8 sig_type=std_logic lab=vout1}
C {lab_pin.sym} 1075 -975 3 0 {name=p9 sig_type=std_logic lab=vout2}
C {lab_pin.sym} 795 -1005 0 0 {name=p11 sig_type=std_logic lab=clk}
C {vsource.sym} 470 -700 0 0 {name=V2 value=1.2
}
C {gnd.sym} 470 -670 0 0 {name=l3 lab=GND
value="PULSE( 0 1.2 17.5N 10P 10P 5N \{(5N)+(5N)+(10P)+(10P)\} )  AC 0"}
C {lab_pin.sym} 470 -760 0 0 {name=p12 sig_type=std_logic lab=clk}
C {vsource.sym} 435 -960 0 0 {name=V3 value=0}
C {lab_pin.sym} 540 -1020 0 0 {name=p13 sig_type=std_logic lab=vm}
C {vsource.sym} 475 -870 0 0 {name=VDD2 value="DC 0.6"}
C {gnd.sym} 475 -840 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1400 -975 2 0 {name=p17 sig_type=std_logic lab=IsLow}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1205 -1035 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1205 -975 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 1400 -1035 2 0 {name=p20 sig_type=std_logic lab=IsHigh}
C {lab_pin.sym} 1350 -850 3 0 {name=p18 sig_type=std_logic lab=vss}
C {vsource.sym} 540 -955 0 0 {name=V4 value=100m}
C {simulator_commands.sym} 10 -1570 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.options cshunt=20f
.options rseries=1
.control
op
echo \\" ---------------- Diff pair ----------------\\" > file
let ids1 = 8*@n.x1.x1.xmb1.nsg13_lv_nmos[ids]
echo Ids1 = $&ids1 >> file
let ids2 = 8*@n.x1.x1.xma1.nsg13_lv_nmos[ids]
echo Ids2 = $&ids2 >> file
let Vgs1 = @n.x1.x1.xmb1.nsg13_lv_nmos[vgs]
echo Vgs1 = $&vgs1 >> file
let Vgs2 = @n.x1.x1.xma1.nsg13_lv_nmos[vgs]
echo Vgs2 = $&vgs2 >> file
let Vth1 = @n.x1.x1.xmb1.nsg13_lv_nmos[vth]
echo Vth1 = $&vth1 >> file
let Vth2 = @n.x1.x1.xma1.nsg13_lv_nmos[vth]
echo Vth2 = $&vth2 >> file
let gm1 = 8*@n.x1.x1.xmb1.nsg13_lv_nmos[gm]
echo gm1 = $&gm1 >> file
let gm2 = 8*@n.x1.x1.xma1.nsg13_lv_nmos[gm]
echo gm2 = $&gm2 >> file
let cdd1 = 8*@n.x1.x1.xmb1.nsg13_lv_nmos[cdd]
echo cdd1 = $&cdd1 >> file
let cdd2 = 8*@n.x1.x1.xma1.nsg13_lv_nmos[cdd]
echo cdd2 = $&cdd2 >> file
let cgg1 = 8*@n.x1.x1.xmb1.nsg13_lv_nmos[cgg]
echo cgg1 = $&cgg1 >> file
let cgg2 = 8*@n.x1.x1.xma1.nsg13_lv_nmos[cgg]
echo cgg2 = $&cgg2 >> file
let css1 = 8*@n.x1.x1.xmb1.nsg13_lv_nmos[css]
echo css1 = $&css1 >> file
let css2 = 8*@n.x1.x1.xma1.nsg13_lv_nmos[css]
echo css2 = $&css2 >> file
echo \\" ---------------- Tail switch ----------------\\" >> file
let ids = @n.x1.xm7.nsg13_lv_nmos[ids]
echo Ids = $&ids >> file
let vgs = @n.x1.xm7.nsg13_lv_nmos[vgs]
echo Vgs = $&vgs >> file
let vth = @n.x1.xm7.nsg13_lv_nmos[vth]
echo Vth = $&vth >> file
let gm = @n.x1.xm7.nsg13_lv_nmos[gm]
echo gm = $&gm >> file
let cdd = @n.x1.xm7.nsg13_lv_nmos[cdd]
echo cdd = $&cdd >> file
let cgg = @n.x1.xm7.nsg13_lv_nmos[cgg]
echo cgg = $&cgg >> file
let css = @n.x1.xm7.nsg13_lv_nmos[css]
echo css = $&css >> file
echo \\" ---------------- NMOS cross coupled pair ----------------\\" >> file
let ids1 = 8*@n.x1.x2.xma1.nsg13_lv_nmos[ids]
echo Ids1 = $&ids1 >> file
let ids2 = 8*@n.x1.x2.xmb1.nsg13_lv_nmos[ids]
echo Ids2 = $&ids2 >> file
let vgs1 = @n.x1.x2.xma1.nsg13_lv_nmos[vgs]
echo Vgs1 = $&vgs1 >> file
let vgs2 = @n.x1.x2.xmb1.nsg13_lv_nmos[vgs]
echo Vgs2 = $&vgs2 >> file
let vth1 = @n.x1.x2.xma1.nsg13_lv_nmos[vth]
echo Vth1 = $&vth1 >> file
let vth2 = @n.x1.x2.xmb1.nsg13_lv_nmos[vth]
echo Vth2 = $&vth2 >> file
let gm1 = 8*@n.x1.x2.xma1.nsg13_lv_nmos[gm]
echo gm1 = $&gm1 >> file
let gm2 = 8*@n.x1.x2.xmb1.nsg13_lv_nmos[gm]
echo gm2 = $&gm2 >> file
let cdd1 = 8*@n.x1.x2.xma1.nsg13_lv_nmos[cdd]
echo cdd1 = $&cdd1 >> file
let cdd2 = 8*@n.x1.x2.xmb1.nsg13_lv_nmos[cdd]
echo cdd2 = $&cdd2 >> file
let cgg1 = 8*@n.x1.x2.xma1.nsg13_lv_nmos[cgg]
echo cgg1 = $&cgg1 >> file
let cgg2 = 8*@n.x1.x2.xmb1.nsg13_lv_nmos[cgg]
echo cgg2 = $&cgg2 >> file
let css1 = 8*@n.x1.x2.xma1.nsg13_lv_nmos[css]
echo css1 = $&css1 >> file
let css2 = 8*@n.x1.x2.xmb1.nsg13_lv_nmos[css]
echo css2 = $&css2 >> file
echo \\" ---------------- PMOS cross coupled pair ----------------\\" >> file
let ids1 = 4*@n.x1.x3.xma1.nsg13_lv_pmos[ids]
echo Ids1 = $&ids1 >> file
let ids2 = 4*@n.x1.x3.xmb1.nsg13_lv_pmos[ids]
echo Ids2 = $&ids2 >> file
let vgs1 = @n.x1.x3.xma1.nsg13_lv_pmos[vgs]
echo Vgs1 = $&vgs1 >> file
let vgs2 = @n.x1.x3.xmb1.nsg13_lv_pmos[vgs]
echo Vgs2 = $&vgs2 >> file
let vth1 = @n.x1.x3.xma1.nsg13_lv_pmos[vth]
echo Vth1 = $&vth1 >> file
let vth2 = @n.x1.x3.xmb1.nsg13_lv_pmos[vth]
echo Vth2 = $&vth2 >> file
let gm1 = 4*@n.x1.x3.xma1.nsg13_lv_pmos[gm]
echo gm1 = $&gm1 >> file
let gm2 = 4*@n.x1.x3.xmb1.nsg13_lv_pmos[gm]
echo gm2 = $&gm2 >> file
let cdd1 = 4*@n.x1.x3.xma1.nsg13_lv_pmos[cdd]
echo cdd1 = $&cdd1 >> file
let cdd2 = 4*@n.x1.x3.xmb1.nsg13_lv_pmos[cdd]
echo cdd2 = $&cdd2 >> file
let cgg1 = 4*@n.x1.x3.xma1.nsg13_lv_pmos[cgg]
echo cgg1 = $&cgg1 >> file
let cgg2 = 4*@n.x1.x3.xmb1.nsg13_lv_pmos[cgg]
echo cgg2 = $&cgg2 >> file
let css1 = 4*@n.x1.x3.xma1.nsg13_lv_pmos[css]
echo css1 = $&css1 >> file
let css2 = 4*@n.x1.x3.xmb1.nsg13_lv_pmos[css]
echo css2 = $&css2 >> file
echo \\" ---------------- Switches ----------------\\" >> file
let ids1 = @n.x1.xms1.nsg13_lv_pmos[ids]
echo Ids1 = $&ids1 >> file
let ids2 = @n.x1.xms2.nsg13_lv_pmos[ids]
echo Ids2 = $&ids2 >> file
let ids3 = @n.x1.xms3.nsg13_lv_pmos[ids]
echo Ids3 = $&ids3 >> file
let ids4 = @n.x1.xms4.nsg13_lv_pmos[ids]
echo Ids4 = $&ids4 >> file
let vgs1 = @n.x1.xms1.nsg13_lv_pmos[vgs]
echo Vgs1 = $&vgs1 >> file
let vgs2 = @n.x1.xms2.nsg13_lv_pmos[vgs]
echo Vgs2 = $&vgs2 >> file
let vgs3 = @n.x1.xms3.nsg13_lv_pmos[vgs]
echo Vgs3 = $&vgs3 >> file
let vgs4 = @n.x1.xms4.nsg13_lv_pmos[vgs]
echo Vgs4 = $&vgs4 >> file
let vth1 = @n.x1.xms1.nsg13_lv_pmos[vth]
echo Vth1 = $&vth1 >> file
let vth2 = @n.x1.xms2.nsg13_lv_pmos[vth]
echo Vth2 = $&vth2 >> file
let vth3 = @n.x1.xms3.nsg13_lv_pmos[vth]
echo Vth3 = $&vth3 >> file
let vth4 = @n.x1.xms4.nsg13_lv_pmos[vth]
echo Vth4 = $&vth4 >> file
let gm1 = @n.x1.xms1.nsg13_lv_pmos[gm]
echo gm1 = $&gm1 >> file
let gm2 = @n.x1.xms2.nsg13_lv_pmos[gm]
echo gm2 = $&gm2 >> file
let gm3 = @n.x1.xms3.nsg13_lv_pmos[gm]
echo gm3 = $&gm3 >> file
let gm4 = @n.x1.xms4.nsg13_lv_pmos[gm]
echo gm4 = $&gm4 >> file
let cdd1 = @n.x1.xms1.nsg13_lv_pmos[cdd]
echo cdd1 = $&cdd1 >> file
let cdd2 = @n.x1.xms2.nsg13_lv_pmos[cdd]
echo cdd2 = $&cdd2 >> file
let cdd3 = @n.x1.xms3.nsg13_lv_pmos[cdd]
echo cdd3 = $&cdd3 >> file
let cdd4 = @n.x1.xms4.nsg13_lv_pmos[cdd]
echo cdd4 = $&cdd4 >> file
let cgg1 = @n.x1.xms1.nsg13_lv_pmos[cgg]
echo cgg1 = $&cgg1 >> file
let cgg2 = @n.x1.xms2.nsg13_lv_pmos[cgg]
echo cgg2 = $&cgg2 >> file
let cgg3 = @n.x1.xms3.nsg13_lv_pmos[cgg]
echo cgg3 = $&cgg3 >> file
let cgg4 = @n.x1.xms4.nsg13_lv_pmos[cgg]
echo cgg4 = $&cgg4 >> file
let css1 = @n.x1.xms1.nsg13_lv_pmos[css]
echo css1 = $&css1 >> file
let css2 = @n.x1.xms2.nsg13_lv_pmos[css]
echo css2 = $&css2 >> file
let css3 = @n.x1.xms3.nsg13_lv_pmos[css]
echo css3 = $&css3 >> file
let css4 = @n.x1.xms4.nsg13_lv_pmos[css]
echo css4 = $&css4 >> file
.endc
"}
