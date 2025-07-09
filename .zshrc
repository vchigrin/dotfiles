# History setup.
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
# Ignore history lines starting with space.
# HISTORY_IGNORE=' *'
setopt HIST_IGNORE_SPACE
# Save history after each line added.
setopt inc_append_history
# First drop duplicates from history.
setopt HIST_EXPIRE_DUPS_FIRST
# Check what has been added by other instances of ZSH
# setopt share_history
# More information in history
setopt extended_history
# Ask user confirm hist substitution before executing.
setopt hist_verify
# Preserve list of directories during cd to ease navigate with "cd ~4"
setopt autopushd
# Clear dups in directories list.
setopt pushdignoredups
# Use new completion system
autoload compinit
compinit

# Make "ls -l" give most time information.
export TIME_STYLE=full-iso
export EDITOR=vim
# Set LS_COLORS variable.
eval $(TERM=xterm dircolors)
# Make completion colorful
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

autoload -U colors && colors
alias ls="ls --color=auto"
alias bat="batcat --wrap=never --paging=always"
# Taken from Oh my zsh cypher theme.
PROMPT="%{${fg_bold[red]}%}:: %{${fg[green]}%}%3~%(0?. . %{${fg[red]}%}%? )%{${fg[blue]}%}»%{${reset_color}%} "
