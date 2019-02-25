#!/bin/bash

# Keyboard Colors/Macros
g910-led -a 0000FF
g910-led -gkm 1

# Disable CapsLock
xmodmap ~/.Xmodmap
