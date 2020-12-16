ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git composer node npm vagrant symfony2 brew docker encode64 phing urltools ruby gem gradle history sudo)
source $ZSH/oh-my-zsh.sh
export EDITOR="vim"
export GIT_EDITOR="vim"
export HOMEBREW_NO_ANALYTICS=1

# configs
alias vconf="vim ~/.vimrc"
alias zrel=". ~/.zshrc && echo 'reloaded'"
alias zconf="vim ~/.zshrc"
alias sconf="vim ~/.ssh/config"
alias gconf="vim ~/.gitconfig"

# network
alias lip="ipconfig getifaddr en0"
alias pip="curl ifconfig.me"
alias sshrm="ssh-keygen -R"
alias dog="dog" # like a dig (dns client)
alias gping="gping"
alias speed="speedtest-cli"
alias scan="arp-scan -l"
alias q="http"
alias wifi-password="wifi-password"

# docker
alias docker_start="open -a Docker"
alias docker_stop="osascript -e 'quit app \"Docker\"'"
alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias dpsp='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}"'
alias dockerstat="docker system df -v"
alias lzd="lazydocker"
alias k="kubectl"
alias h="helm"

# misc
alias proj="cd ~/Projects/"
alias l="ls -ohSF"
alias ll="ls -ohSFa"
alias cp="cp -v"
alias mv="mv -v"
alias ln="ln -v"
alias rm="rm -v"
alias v="vim"
alias adbdevs="adb devices"
alias adbapps="adb shell 'pm list packages -f'"
alias inf="archey"
alias fz="fzf"
alias fd="fd"
alias rg="rg"
alias ctop="ctop"
alias gla="glances"
alias trec="asciinema rec" # Ctrl-D to stop or type 'exit'
alias tplay="asciinema play"
alias tree="tree ~/Desktop"
alias cat="bat"
alias man_tar="tldr tar"
alias lah="exa -l --git"
alias ncdu="ncdu"
alias weather="curl http://wttr.in/Minsk"
alias upd="softwareupdate --all --install --force"
alias matr="cmatrix"
alias coins="cointop"
alias lnav="lnav"
alias duf="duf"
alias bit="bit"
alias youtubedownload="youtube-dl"
alias mas="mas" # mac os app store
alias trash="trash" # move to trash
alias gitk="gitk"
alias shreder="shred -zv"
alias hg="history | grep"

# variables
export JAVA14="$(/usr/libexec/java_home -v 14)"
export JAVA_HOME="$JAVA14"
export JAVA_BIN="$JAVA_HOME/bin"
export GRADLE_PATH="$HOME/Desktop/gradle-4.8/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_TOOLS="$HOME/Library/Android/sdk/tools/bin"
export ANDROID_PLATFORM_TOOLS="$HOME/Library/Android/sdk/platform-tools"
export MYSQL_PATH="/usr/local/opt/mysql-client/bin"
export GOPATH=$(go env GOPATH)
export PATH=$GOPATH/bin:$PATH
export PATH="$JAVA_BIN:$GRADLE_PATH:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$MYSQL_PATH:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/e2fsprogs/bin:$PATH"
export PATH="/usr/local/opt/e2fsprogs/sbin:$PATH"

# local zshrc
if [[ -f $HOME/.zshrc.local ]]; then
    source $HOME/.zshrc.local
fi

function take {
    mkdir -p $1
    cd $1
}

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit
