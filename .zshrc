ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git vi-mode osx iterm2 composer node npm yarn brew docker encode64 urltools history sudo zsh-autosuggestions zsh-syntax-highlighting catimg colored-man-pages golang jsontools nmap postgres zsh_reload)
source $ZSH/oh-my-zsh.sh
export EDITOR="vim"
export GIT_EDITOR="vim"
export HOMEBREW_NO_ANALYTICS=1

eval "$(/opt/homebrew/bin/brew shellenv)"

# local zshrc
if [[ -f $HOME/.zshrc.local ]]; then
    source $HOME/.zshrc.local
fi

# shell integration
if [[ -f $HOME/.iterm2_shell_integration.zsh ]]; then
    source $HOME/.iterm2_shell_integration.zsh
fi

# include aliases
if [[ -f $HOME/.zshrc.alias ]]; then
    source $HOME/.zshrc.alias
fi

# variables
export OPENJDK15="/usr/local/opt/openjdk@15/bin"
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
export PATH="$JAVA_BIN:$OPENJDK15:$GRADLE_PATH:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$MYSQL_PATH:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/e2fsprogs/bin:$PATH"
export PATH="/usr/local/opt/e2fsprogs/sbin:$PATH"

neofetch

function take {
    mkdir -p $1
    cd $1
}

function ntfy {
    echo "$2" | http ntfy.sh/$1
}

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
bindkey -s '^S' "git status\n"

