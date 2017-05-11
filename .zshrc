ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git composer node npm vagrant symfony2 brew docker encode64 phing urltools ruby gem gradle history sudo)
source $ZSH/oh-my-zsh.sh

alias vimconfig="vim ~/.vimrc"
alias zshreload=". ~/.zshrc && echo 'reloaded'"
alias zshconfig="vim ~/.zshrc"
alias sshconfig="vim ~/.ssh/config"
alias gitconfig="vim ~/.gitconfig"
alias run="react-native run-ios"
alias myip="ipconfig getifaddr en0"

alias adbdevs="adb devices"
alias adbapps="adb shell 'pm list packages -f'"

export PATH="/usr/local/bin:$PATH"

export PHP_PATH="$(brew --prefix homebrew/php/php71)/bin"
export PATH="$PHP_PATH:$PATH"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export JAVA_BIN="$JAVA_HOME/bin"
export PATH="$JAVA_BIN:$PATH"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_TOOLS="$HOME/Library/Android/sdk/tools/bin"
export ANDROID_PLATFORM_TOOLS="$HOME/Library/Android/sdk/platform-tools"
#export ANDROID_BUILD_TOOLS="/Users/alxsad/Library/Android/sdk/build-tools/24.0.3"
export PATH="$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$PATH"

