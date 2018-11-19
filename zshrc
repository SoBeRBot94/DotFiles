export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/home/SoBeRBot94/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source "/home/SoBeRBot94/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
#source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User specific aliases and functions
alias cat="/usr/local/bin/ccat"
export PAGER="most"

alias detox='sudo bleachbit --list-cleaners | grep -E "[A-Z]*|[a-z]*\.[a-z]*" | grep -v system.free_disk_space | grep -v system.localizations | xargs sudo bleachbit --clean'

alias vim="nvim"
alias vi="nvim"

alias zshrc="vim ~/.zshrc"

alias vbox_rebuild="sudo /usr/lib/virtualbox/vboxdrv.sh setup"

alias l="ll"
alias ll="tree -NhDCpug -L 1"

alias tf="/usr/bin/terraform"

alias todo="/usr/bin/todolist"

alias docker_clean_containers="docker rm --force $(docker ps -a | awk '{print $1}' | grep -v CONTAINER)"
alias docker_clean_images="docker rmi --force $(docker images -a | awk '{print $3}' | grep -v IMAGE)"
