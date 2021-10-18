#!bin/bash

if [ $(whoami) == "root" ]; then
    echo "Root"
else
    echo "$(whoami)"
fi
