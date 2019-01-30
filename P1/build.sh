#!/usr/bin/env bash

cd rocket-chip/vsim/
make verilog PROJECT=galois.system CONFIG=P1FPGAConfig
generated_dir=rocket-chip/vsim/generated-src/
user_ip_dir=xilinx_ip/hdl/
cp $generated_dir/galois.system.P1FPGAConfig.v $user_ip_dir
cp $generated_dir/galois.system.P1FPGAConfig.behav_srams.v $user_ip_dir
cp $generated_dir/galois.system.P1FPGAConfig/AsyncResetReg.v $user_ip_dir
cp $generated_dir/galois.system.P1FPGAConfig/plusarg_reader.v $user_ip_dir
