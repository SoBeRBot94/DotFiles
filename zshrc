export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/home/SoBeRBot94/.oh-my-zsh

# ==================================================

# oh-my-zsh Theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# ==================================================

# Powerlevel9K customization
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs battery time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"

# ==================================================

# STDIN
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# ==================================================

# Plugins
plugins=(
  git
)

# ==================================================

# Sources
source $ZSH/oh-my-zsh.sh
source "/home/SoBeRBot94/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
#source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ==================================================

# User specific aliases and functions
alias zshrc="vim ~/.zshrc"

### --- Bleachbit ---
alias detox='sudo bleachbit --list-cleaners | grep -E "[A-Z]*|[a-z]*\.[a-z]*" | grep -v system.free_disk_space | grep -v system.localizations | xargs sudo bleachbit --clean'

### --- Virtualbox ---
alias vbox_rebuild="sudo /usr/lib/virtualbox/vboxdrv.sh setup"

### --- Directory Contents ---
alias l="ll"
alias ll="tree -NhDCpug -L 1"

### --- Terraform ---
alias tf="/usr/bin/terraform"

### --- TUI Applications ---
alias todo="/usr/bin/todolist"
alias cat="/usr/local/bin/ccat"
alias vi="/usr/bin/nvim"
alias vim="/usr/bin/nvim"

### --- Docker ---
alias docker_clean_containers="docker rm --force $(docker ps -a | awk '{print $1}' | grep -v CONTAINER)"
alias docker_clean_images="docker rmi --force $(docker images -a | awk '{print $3}' | grep -v IMAGE)"

## --- Exports ---
export PAGER="most"
