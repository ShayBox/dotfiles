# Path to your oh-my-zsh installation.
export ZSH="/home/shaybox/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
DEFAULT_USER="shaybox"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

## General

# Autocomplete command flags
autoload -U compinit && compinit

# Replace ls
alias ls=exa

# Editor
alias vi="nvim"
alias vim="nvim"

# SSH shortcuts
alias server="ssh server"
alias tablet="ssh tablet"
alias pi="ssh pi@pi"
alias bots="ssh shay@bots"
alias terraria="ssh shay@server.nomsy.net"

# Flipping
alias flipping="nvidia-settings -a AllowFlipping=0"

# Proxy
alias proxy1="sshuttle --dns -r shay@bots 0/0"
alias proxy2="sshuttle --dns -r shay@server.nomsy.net 0/0"

# VMs
alias unbind="su -c '/home/shaybox/.scripts/unbind.sh &'"
alias rebind="su -c '/home/shaybox/.scripts/rebind.sh &'"

# dotfiles
alias dotfiles="git --git-dir=$HOME/Documents/dotfiles/ --work-tree=$HOME"

# Convert to davinci-resolve compatable file
rconvert() {
	ffmpeg-bar -y -i "$1" -c:v libxvid -c:v mpeg4 -force_key_frames "expr:gte(t,n_forced*1)" -b:v 250000k -c:a pcm_s16le "${1%%.*}.mov"
}

## End General
## Arch

# Make .SRCINFO
alias mksrcinfo="makepkg --printsrcinfo > .SRCINFO"

# Update Grub
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"

## End Arch

neofetch
ls
