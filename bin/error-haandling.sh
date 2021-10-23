#!/bin/bash

# Run a command that should always work:
mktemp
TEMP=$?
# Run a command that should always fail:
mkdir /home/
DIR=$?
echo "mktemp returned ${TEMP}, while mkdir returned ${DIR}!"