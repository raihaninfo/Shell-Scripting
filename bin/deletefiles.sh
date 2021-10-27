#!/bin/bash

user=${1}
path=${2}
function delete() {

    if [ -f ${2} ]; then
        sudo -u ${1} rm -r ${2}
        echo "File removed"
    
    else
        echo "This file is not available"
    fi
}

delete "$user $path"