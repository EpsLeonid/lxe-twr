## Generated SDC file "sat_comm_board_hw_v1_0_fw_v_1_0.out.sdc"

## Copyright (C) 1991-2011 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 11.0 Build 157 04/27/2011 SJ Full Version"

## DATE    "Wed Jan 18 16:01:15 2012"

##
## DEVICE  "EP3C16F484C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLOCK20MHZ} -period 50.000 -waveform { 0.000 25.000 } [get_ports {CLOCK20MHZ*}]
create_clock -name {ETH_RX_CLK} -period 40.000 -waveform { 0.000 20.000 } [get_ports {ETH_RX_CLK}]
create_clock -name {ETH_TX_CLK} -period 40.000 -waveform { 0.000 20.000 } [get_ports {ETH_TX_CLK}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {pllclk120mhz} -source [get_pins {infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 6 -master_clock {CLOCK20MHZ} [get_pins {infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {pllclk120mhz}]  0.020 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {pllclk120mhz}]  0.020 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_RX_CLK}] -setup 0.110 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_RX_CLK}] -hold 0.080 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_RX_CLK}] -setup 0.110 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_RX_CLK}] -hold 0.080 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_TX_CLK}] -setup 0.110 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_TX_CLK}] -hold 0.080 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_TX_CLK}] -setup 0.110 
set_clock_uncertainty -rise_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_TX_CLK}] -hold 0.080 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {pllclk120mhz}]  0.020 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {pllclk120mhz}]  0.020 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_RX_CLK}] -setup 0.110 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_RX_CLK}] -hold 0.080 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_RX_CLK}] -setup 0.110 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_RX_CLK}] -hold 0.080 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_TX_CLK}] -setup 0.110 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -rise_to [get_clocks {ETH_TX_CLK}] -hold 0.080 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_TX_CLK}] -setup 0.110 
set_clock_uncertainty -fall_from [get_clocks {pllclk120mhz}] -fall_to [get_clocks {ETH_TX_CLK}] -hold 0.080 
set_clock_uncertainty -rise_from [get_clocks {ETH_RX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -rise_from [get_clocks {ETH_RX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -rise_from [get_clocks {ETH_RX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -rise_from [get_clocks {ETH_RX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -rise_from [get_clocks {ETH_RX_CLK}] -rise_to [get_clocks {ETH_RX_CLK}]  0.020 
set_clock_uncertainty -rise_from [get_clocks {ETH_RX_CLK}] -fall_to [get_clocks {ETH_RX_CLK}]  0.020 
set_clock_uncertainty -fall_from [get_clocks {ETH_RX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -fall_from [get_clocks {ETH_RX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -fall_from [get_clocks {ETH_RX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -fall_from [get_clocks {ETH_RX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -fall_from [get_clocks {ETH_RX_CLK}] -rise_to [get_clocks {ETH_RX_CLK}]  0.020 
set_clock_uncertainty -fall_from [get_clocks {ETH_RX_CLK}] -fall_to [get_clocks {ETH_RX_CLK}]  0.020 
set_clock_uncertainty -rise_from [get_clocks {ETH_TX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -rise_from [get_clocks {ETH_TX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -rise_from [get_clocks {ETH_TX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -rise_from [get_clocks {ETH_TX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -rise_from [get_clocks {ETH_TX_CLK}] -rise_to [get_clocks {ETH_TX_CLK}]  0.020 
set_clock_uncertainty -rise_from [get_clocks {ETH_TX_CLK}] -fall_to [get_clocks {ETH_TX_CLK}]  0.020 
set_clock_uncertainty -fall_from [get_clocks {ETH_TX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -fall_from [get_clocks {ETH_TX_CLK}] -rise_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -fall_from [get_clocks {ETH_TX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -setup 0.080 
set_clock_uncertainty -fall_from [get_clocks {ETH_TX_CLK}] -fall_to [get_clocks {pllclk120mhz}] -hold 0.110 
set_clock_uncertainty -fall_from [get_clocks {ETH_TX_CLK}] -rise_to [get_clocks {ETH_TX_CLK}]  0.020 
set_clock_uncertainty -fall_from [get_clocks {ETH_TX_CLK}] -fall_to [get_clocks {ETH_TX_CLK}]  0.020 


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -exclusive -group [get_clocks {  CLOCK20MHZ  }] -group [get_clocks {  pllclk120mhz  }] -group [get_clocks {  ETH_RX_CLK  }] -group [get_clocks {  ETH_TX_CLK  }] 

#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

