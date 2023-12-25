# History setup.
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# Save history after each line added.
setopt inc_append_history
# Check what has been added by other instances of ZSH
setopt share_history
# More information in history
setopt extended_history
# Ask user confirm hist substitution before executing.
setopt hist_verify

export EDITOR=vim

autoload -U colors && colors
alias ls="ls --color=auto"
# Taken from Oh my zsh cypher theme.
PROMPT="%m %{${fg_bold[red]}%}:: %{${fg[green]}%}%3~%(0?. . %{${fg[red]}%}%? )%{${fg[blue]}%}»%{${reset_color}%} "
