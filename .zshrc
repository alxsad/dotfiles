ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git composer node npm vagrant bower symfony2 brew docker encode64 phing urltools)
source $ZSH/oh-my-zsh.sh

alias vimconfig="vim ~/.vimrc"
alias zshreload=". ~/.zshrc && echo 'reloaded'"
alias zshconfig="vim ~/.zshrc"
alias sshconfig="vim ~/.ssh/config"

