ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git composer node npm vagrant bower symfony2 systemd brew docker encode64 phing)
source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias sshconfig="vim ~/.ssh/config"

