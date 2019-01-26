#!/bin/bash

USAGE=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader | sed 's/ //g')
TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)

echo " $USAGE $TEMP°C"