#!/bin/bash

if [ "$(nvidia-settings -tq AllowFlipping)" = "1" ]
then
	nvidia-settings -a AllowFlipping=0
else
	nvidia-settings -a AllowFlipping=1
fi
