#!/usr/bin/env bash

function proc_usage {
    echo "Usage: $0 [P1|P2|P3]"
    echo "Please specify a P1, P2, or P3 processor!"
}

function proc_picker {
    # Parse the processor selection
    if [ "$1" == "P1" ]; then
        proc_name="P1"
    elif [ "$1" == "P2" ]; then
        proc_name="P2"
    elif [ "$1" == "P3" ]; then
        proc_name="P3"
    else
        proc_usage
        exit -1
    fi
}

proc_picker $1
user_ip_dir=$proc_name/xilinx_ip/hdl/

# Build Chisel P1 or P2
if [ $proc_name == "P1" ] || [ $proc_name == "P2" ]; then
    cd rocket-chip/vsim
    make verilog PROJECT=galois.system CONFIG=${proc_name}TVFPGAConfig

    generated_dir=rocket-chip/vsim/generated-src
    if [[ $? -ne 0 ]]; then
        echo "Processor build failed."
        exit 1
    fi

    cd ../../
    cp $generated_dir/galois.system.${proc_name}TVFPGAConfig.v $user_ip_dir
    cp $generated_dir/galois.system.${proc_name}TVFPGAConfig.behav_srams.v $user_ip_dir
    cp $generated_dir/galois.system.${proc_name}TVFPGAConfig/AsyncResetReg.v $user_ip_dir
    cp $generated_dir/galois.system.${proc_name}TVFPGAConfig/plusarg_reader.v $user_ip_dir

# Build Chisel P3
else
    cd P3/boom-template/verisim
    make PROJECT=boom.galois.system CONFIG=BoomP3FPGAConfig
    if [[ $? -ne 0 ]]; then
        echo "Processor build failed."
        exit 1
    fi

    cd ../../../
    generated_dir=P3/boom-template/verisim/generated-src

    cp $generated_dir/boom.galois.system.TestHarness.BoomP3FPGAConfig.v $user_ip_dir
fi
