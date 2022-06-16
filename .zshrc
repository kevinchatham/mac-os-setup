export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="calm"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue
ZSH_HIGHLIGHT_STYLES[alias]=fg=blue
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue
ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue
ZSH_HIGHLIGHT_STYLES[path]=none

alias e="exit"
alias cls="clear"
alias c="clear"
alias powershell="pwsh"
alias zsh-spectrum="spectrum_ls"
alias zsh-config="code ~/.zshrc"
alias zsh-themes="code ~/.oh-my-zsh"