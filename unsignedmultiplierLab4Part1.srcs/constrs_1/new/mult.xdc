
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports {clk100MHz}];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk100MHz}];
# Buttons
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {rst}]; # Center Button

set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {A[0]}];
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {A[1]}];
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {A[2]}];
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {A[3]}];
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {B[0]}];
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {B[1]}];
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {B[2]}];
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {B[3]}];
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {cin}];

set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {button1}];

# Output LED
#set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {A[0]}];
#set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {A[1]}];
#set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {A[2]}];
#set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {A[3]}];
#set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {B[0]}];
#set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {B[1]}];
#set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {B[2]}];
#set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {B[3]}];


set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[0]}]; # CA
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[1]}]; # CB
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[2]}]; # CC
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[3]}]; # CD
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[4]}]; # CE
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[5]}]; # CF
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[6]}]; # CG
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {LEDOUT[7]}]; # DP
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[0]}]; # AN0
set_property -dict {PACKAGE_PIN U4 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[1]}]; # AN1
set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[2]}]; # AN2
set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVCMOS33} [get_ports {LEDSEL[3]}]; # AN3


