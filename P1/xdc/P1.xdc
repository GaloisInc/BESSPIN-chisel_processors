### General Constants
set CLK_PERIOD 4.545
set DEBUG_PERIOD 100.0

### Clock definitions and relationships
set clk_port clock
set debug_clk_port debug_systemjtag_jtag_TCK

create_clock -name clk -period [expr $CLK_PERIOD] [get_ports $clk_port]
create_clock -name debug_clk -period [expr $DEBUG_PERIOD] [get_ports $debug_clk_port]
set_clock_groups -asynchronous -group [get_clocks clk] -group [get_clocks debug_clk]

### Functional I/O group relative to processing clock
set func_inputs [filter [all_inputs] "NAME !~ debug_* && NAME !~ $clk_port"]
set func_outputs [filter [all_outputs] "NAME !~ debug_*"]
 
set_input_delay -max [expr 0.5 * $CLK_PERIOD] -clock [get_clocks clk] $func_inputs
set_output_delay -max [expr 0.4 * $CLK_PERIOD] -clock [get_clocks clk] $func_outputs
# FIX: input-to-output is not well constrained. setting muclticycle_path + max_delay as an experiment for timing
set_multicycle_path 2 -from $func_inputs -to $func_outputs -setup
set_max_delay -datapath_only -from $func_inputs -to $func_outputs [expr 0.5 * $CLK_PERIOD]

### Debug I/O group relative to debug clock 
set debug_inputs [get_ports debug_* -filter "DIRECTION == IN && NAME !~ $debug_clk_port"]
set debug_outputs [get_ports debug_* -filter "DIRECTION == OUT"]

set_input_delay -max [expr 0.7 * $DEBUG_PERIOD] -clock [get_clocks debug_clk] $debug_inputs 
set_output_delay -max [expr 0.4 * $DEBUG_PERIOD] -clock [get_clocks debug_clk] $debug_outputs

# FIX: input-to-output is not well constrained. setting muclticycle_path + max_delay as an experiment for timing
set_multicycle_path 2 -from $debug_inputs -to $debug_outputs -setup
set_max_delay -datapath_only -from $debug_inputs -to $debug_outputs [expr 0.5 * $DEBUG_PERIOD]
