
�
Command: %s
1870*	planAhead2�
yread_checkpoint -auto_incremental -incremental D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2^
JD:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
140802default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
ack2default:default2
wire2default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/reg_config.v2default:default2
262default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
tr_end2default:default2
wire2default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/reg_config.v2default:default2
292default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 2314.340 ; gain = 410.484
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
blk_mem_gen_02default:default2
 2default:default2{
eD:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
blk_mem_gen_02default:default2
 2default:default2
02default:default2
12default:default2{
eD:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2w
aD:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/realtime/clk_wiz_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
02default:default2
12default:default2w
aD:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/realtime/clk_wiz_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
locked2default:default2
	clk_wiz_02default:default2
clk2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
662default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
clk2default:default2
	clk_wiz_02default:default2
62default:default2
52default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
662default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2"
ov5640_capture2default:default2
 2default:default2_
ID:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/ov5640_capture.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
ov5640_capture2default:default2
 2default:default2
02default:default2
12default:default2_
ID:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/ov5640_capture.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

ov5640_vga2default:default2
 2default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/ov5640_vga.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ov5640_vga2default:default2
 2default:default2
02default:default2
12default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/ov5640_vga.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
power_on_delay2default:default2
 2default:default2_
ID:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/power_on_delay.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
power_on_delay2default:default2
 2default:default2
02default:default2
12default:default2_
ID:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/power_on_delay.v2default:default2
22default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
camera2_rstn2default:default2"
power_on_delay2default:default2
power2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
1012default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
power2default:default2"
power_on_delay2default:default2
62default:default2
52default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
1012default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2

reg_config2default:default2
 2default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/reg_config.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
i2c_com2default:default2
 2default:default2X
BD:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/i2c_com.v2default:default2
22default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2X
BD:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/i2c_com.v2default:default2
592default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
i2c_com2default:default2
 2default:default2
02default:default2
12default:default2X
BD:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/i2c_com.v2default:default2
22default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/reg_config.v2default:default2
602default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

reg_config2default:default2
 2default:default2
02default:default2
12default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/reg_config.v2default:default2
22default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	clock_20k2default:default2

reg_config2default:default2
configs2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
1102default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
reg_conf_done_reg2default:default2

reg_config2default:default2
configs2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
1102default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
configs2default:default2

reg_config2default:default2
92default:default2
72default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
1102default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
seg_disp2default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/BCD.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	bintobcd82default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/BCD.v2default:default2
302default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	bintobcd82default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/BCD.v2default:default2
302default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
scan_led_disp2default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/BCD.v2default:default2
572default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
scan_led_disp2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/BCD.v2default:default2
572default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
seg_disp2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/BCD.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
car_left_or_right2default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/car.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
car_left_or_right2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/car.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
car_run_or_stop2default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/car.v2default:default2
242default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
car_run_or_stop2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/car.v2default:default2
242default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

speed_code2default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/pwm.v2default:default2
222default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

speed_code2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/pwm.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
car_pwm2default:default2
 2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/pwm.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
car_pwm2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/pwm.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/top.v2default:default2
32default:default8@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
i2c_data_reg2default:default2

reg_config2default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/reg_config.v2default:default2
272default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
an_reg2default:default2!
scan_led_disp2default:default2T
>D:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/BCD.v2default:default2
792default:default8@Z8-7137h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
speed[0]2default:default2

speed_code2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[19]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[18]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[17]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[16]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[15]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[14]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[13]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[12]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[11]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2*
middle_pixel_count[10]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[9]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[8]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[7]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[6]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[5]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[4]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[3]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[2]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[1]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2)
middle_pixel_count[0]2default:default2%
car_left_or_right2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

initial_en2default:default2

reg_config2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 2415.527 ; gain = 511.672
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 2433.445 ; gain = 529.590
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 2433.445 ; gain = 529.590
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
2433.4452default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
tD:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clk	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
tD:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clk	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�D:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
bram	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�D:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/.Xil/Vivado-7012-lgy/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
bram	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/constrs_1/new/vga_cons.xdc2default:default8Z20-179h px� 
�
No nets matched '%s'.
507*	planAhead2
	pclk_IBUF2default:default2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/constrs_1/new/vga_cons.xdc2default:default2
742default:default8@Z12-507h px�
�
Finished Parsing XDC File [%s]
178*designutils2[
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/constrs_1/new/vga_cons.xdc2default:default8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2Y
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/constrs_1/new/vga_cons.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Y
ED:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/constrs_1/new/vga_cons.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2546.1412default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
2546.1412default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:10 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:10 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:10 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
d_latch_reg2default:default2
162default:default2
122default:default2_
ID:/fpga/FPGA_smart_car/FPGA_smart_car.srcs/sources_1/new/ov5640_capture.v2default:default2
242default:default8@Z8-3936h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2#
config_step_reg2default:default2

reg_config2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                              010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                              100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2#
config_step_reg2default:default2
one-hot2default:default2

reg_config2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:11 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   22 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   21 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   20 Bit       Adders := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   10 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 15    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  43 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:16 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px� 
o
%s*synth2W
C+------------+------------------+---------------+----------------+
2default:defaulth px� 
p
%s*synth2X
D|Module Name | RTL Object       | Depth x Width | Implemented As | 
2default:defaulth px� 
o
%s*synth2W
C+------------+------------------+---------------+----------------+
2default:defaulth px� 
p
%s*synth2X
D|reg_config  | reg_data         | 512x23        | LUT            | 
2default:defaulth px� 
p
%s*synth2X
D|top         | configs/reg_data | 512x23        | LUT            | 
2default:defaulth px� 
p
%s*synth2X
D+------------+------------------+---------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:19 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:20 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:20 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |blk_mem_gen_0 |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#|2     |clk_wiz_0     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|1     |blk_mem_gen |     1|
2default:defaulth px� 
I
%s*synth21
|2     |clk_wiz     |     1|
2default:defaulth px� 
I
%s*synth21
|3     |BUFG        |     2|
2default:defaulth px� 
I
%s*synth21
|4     |CARRY4      |    68|
2default:defaulth px� 
I
%s*synth21
|5     |LUT1        |    31|
2default:defaulth px� 
I
%s*synth21
|6     |LUT2        |    74|
2default:defaulth px� 
I
%s*synth21
|7     |LUT3        |    63|
2default:defaulth px� 
I
%s*synth21
|8     |LUT4        |    63|
2default:defaulth px� 
I
%s*synth21
|9     |LUT5        |    59|
2default:defaulth px� 
I
%s*synth21
|10    |LUT6        |   158|
2default:defaulth px� 
I
%s*synth21
|11    |MUXF7       |    39|
2default:defaulth px� 
I
%s*synth21
|12    |MUXF8       |     7|
2default:defaulth px� 
I
%s*synth21
|13    |FDCE        |    49|
2default:defaulth px� 
I
%s*synth21
|14    |FDPE        |    11|
2default:defaulth px� 
I
%s*synth21
|15    |FDRE        |   315|
2default:defaulth px� 
I
%s*synth21
|16    |IBUF        |    14|
2default:defaulth px� 
I
%s*synth21
|17    |OBUF        |    38|
2default:defaulth px� 
I
%s*synth21
|18    |OBUFT       |     1|
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:12 ; elapsed = 00:00:21 . Memory (MB): peak = 2546.141 ; gain = 529.590
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:15 ; elapsed = 00:00:23 . Memory (MB): peak = 2546.141 ; gain = 642.285
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
2546.1412default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1142default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
g
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
12default:defaultZ31-140h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2546.1412default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
56c234642default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
352default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:162default:default2
00:00:262default:default2
2546.1412default:default2
1041.1412default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2N
:D:/fpga/FPGA_smart_car/FPGA_smart_car.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Dec 17 14:21:25 20232default:defaultZ17-206h px� 


End Record