#!/bin/bash

free -m | awk 'NR==2{print $4, "MB(MegaBytes)"}'