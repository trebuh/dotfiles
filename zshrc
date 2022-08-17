#!/usr/bin/env zsh

# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh
export ZSH=/usr/share/oh-my-zsh/

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# See https://github.com/dikiaap/dotfiles/blob/master/.oh-my-zsh/themes/oxide.zsh-theme
ZSH_THEME="gozilla"

# Use case-sensitive completion.
CASE_SENSITIVE="true"

# History settings.
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
HIST_STAMPS="dd.mm.yyyy" # Command history date format.

# init oh-my-zsh
source "$ZSH/oh-my-zsh.sh"

# Plugin settings.
# Add wisely, as too many plugins slow down shell startup.
plugins=(ssh-agent git docker kubectl helm terraform aws gcloud)

# Autocompletion
source <(terraform-docs completion zsh)
source <(fluxctl completion zsh)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/vault vault

# Common exported variables
export LANG="en_US.utf8"
export EDITOR="nvim"
export TERM="alacritty"

# SSH
export SSH_ASKPASS=ssh-askpass

# Docker
export DOCKER_CONFIG="$HOME/etc/docker"

# Qt
export QT_QPA_PLATFORMTHEME="qt5ct"

# Wayland
export SDL_VIDEODRIVER="wayland"
export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Go
export GOPATH="$HOME/src/tools/go-packages"

# Path declaration.
LOCAL_BIN_PATH="$HOME/.local/bin"
HOME_BIN_PATH="$HOME/bin"
GO_PATH="$GOPATH/bin"

export PATH="$PATH:$LOCAL_BIN_PATH:$HOME_BIN_PATH:$GO_PATH"

# Aliases
alias ssh='EDITOR="vim"; TERM="xterm-256color"; ssh'
alias vim='nvim'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias grep='grep --color=auto'
alias ls='ls --group-directories-first --color=auto'
alias ll='ls -lh'
alias free='free -h'
alias df='df -h'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mv='mv -i'
alias k='kubectl'
