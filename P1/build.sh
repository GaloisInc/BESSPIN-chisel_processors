#!/usr/bin/env bash

cd rocket-chip/vsim
make verilog PROJECT=galois.system CONFIG=P1FPGAConfig
generated_dir=rocket-chip/vsim/generated-src
user_ip_dir=xilinx_ip/hdl/
if [[ $? -ne 0 ]]; then
	echo "P1 build failed."
	exit 1
fi

cd ../../
cp $generated_dir/galois.system.P1FPGAConfig.v $user_ip_dir
cp $generated_dir/galois.system.P1FPGAConfig.behav_srams.v $user_ip_dir
cp $generated_dir/galois.system.P1FPGAConfig/AsyncResetReg.v $user_ip_dir
cp $generated_dir/galois.system.P1FPGAConfig/plusarg_reader.v $user_ip_dir
