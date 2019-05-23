#!/bin/bash

# Editor
export EDITOR=nano
export VISUAL=nano

# GOPATH
export GOPATH=~/Documents/Go

# DOTNET_ROOT
export DOTNET_ROOT=/opt/dotnet

# PATH
export PATH=$PATH:$HOME/.bin:$HOME/.npm-global/bin:$GOPATH/bin:$HOME/.dotnet/tools

# Disable root messages
export ZSH_DISABLE_COMPFIX=true

# Ghost Character Fix
export LC_ALL="en_US.UTF-8"

if [ ! $XDG_CURRENT_DESKTOP ] || [ ! $XDG_CURRENT_DESKTOP = "KDE" ]
then
	# Blank Intellij Privacy Policy Fix
	export _JAVA_AWT_WM_NONREPARENTING=1

	# QT Theme
	export QT_QPA_PLATFORMTHEME=qt5ct
fi
