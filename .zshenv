#!/bin/bash

# Editor
export EDITOR=nano
export VISUAL=nano

# DOTNET_ROOT
export DOTNET_ROOT=/opt/dotnet

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

# Enable MANGOHUD
export MANGOHUD=1

# XDG Paths
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache

# Workarounds for shitty developers
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME"/ccache.config
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH=$XDG_DATA_HOME/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages

# PATH
export PATH="$PATH:$GOPATH/bin:$HOME/.deno/bin:$HOME/.local/bin"
