# GOPATH
export GOPATH=~/Documents/Workspace/Go

# PATH
export PATH=$PATH:~/.bin:~/.npm-global/bin:$GOPATH/bin

# Disable root messages
export ZSH_DISABLE_COMPFIX=true

# Ghost Character Fix
export LC_ALL="en_US.UTF-8"

if [ ! $XDG_CURRENT_DESKTOP = "KDE" ]
then
	# Blank Intellij Privacy Policy Fix
	export _JAVA_AWT_WM_NONREPARENTING=1

	# QT Theme
	export QT_QPA_PLATFORMTHEME=qt5ct
fi
