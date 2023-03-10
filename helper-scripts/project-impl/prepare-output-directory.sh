#!/bin/bash

source "./helper-scripts/project-impl/prepare-directories.sh"
source "./helper-scripts/project-impl/variables.sh"

target=${1}

prepareRootDirectory "${output}"

if [[ $target == "android" ]]; then 
    autoPrepareAndroidBinaryDirectory "${output}"
elif [[ $target == "desktop" ]]; then 
    # if this is not an android target run, then we are going 
    # to auto prepare the output directory according to the system
    autoPrepareBinaryDirectory "${output}"
else 
    echo "No target has been specified !"
fi
