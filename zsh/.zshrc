export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(git zsh-autosuggestions z nvm)

source $ZSH/oh-my-zsh.sh

source /Users/johnwildelgado/.docker/init-zsh.sh || true # Added by Docker Desktop

export PATH="/opt/homebrew/bin:$PATH"

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/15/bin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$HOME/.cargo/bin:$PATH"

alias v="nvim"
alias copy="cp"
alias g="git"
alias t="tmux"

alias ts="~/.local/scripts/tmux-session.sh"
