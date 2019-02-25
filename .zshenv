# EDITOR
export EDITOR=nvim
export VISUAL=nvim

# GOPATH
export GOPATH=~/Documents/Workspace/Go

# PATH
export PATH=$PATH:~/.bin:~/.npm-global/bin:$GOPATH/bin

# Ghost Character Fix
export LC_ALL="en_US.UTF-8"

# Blank Intellij Privacy Policy Fix
export _JAVA_AWT_WM_NONREPARENTING=1

# Disable root messages
export ZSH_DISABLE_COMPFIX=true

# QT Theme
if [ ! $XDG_CURRENT_DESKTOP = "KDE" ]
then
	export QT_QPA_PLATFORMTHEME=qt5ct
fi
