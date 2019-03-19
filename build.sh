#!/usr/bin/env bash

function proc_usage {
        echo "Usage: $0 [P1|P2]"
        echo "Please specify a P1 or P2 processor!"
}

function proc_picker {
        # Parse the processor selection
        if [ "$1" == "P1" ]; then
                proc_name="P1"
        elif [ "$1" == "P2" ]; then
                proc_name="P2"
        else
                proc_usage
                exit -1
        fi
}

proc_picker $1
cd rocket-chip/vsim
make verilog PROJECT=galois.system CONFIG=${proc_name}FPGAConfig

generated_dir=rocket-chip/vsim/generated-src
user_ip_dir=$proc_name/xilinx_ip/hdl/
if [[ $? -ne 0 ]]; then
	echo "Processor build failed."
	exit 1
fi

cd ../../
cp $generated_dir/galois.system.${proc_name}FPGAConfig.v $user_ip_dir
cp $generated_dir/galois.system.${proc_name}FPGAConfig.behav_srams.v $user_ip_dir
cp $generated_dir/galois.system.${proc_name}FPGAConfig/AsyncResetReg.v $user_ip_dir
cp $generated_dir/galois.system.${proc_name}FPGAConfig/plusarg_reader.v $user_ip_dir
