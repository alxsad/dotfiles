ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git iterm2 composer node npm yarn brew docker encode64 urltools history sudo zsh-autosuggestions zsh-syntax-highlighting catimg colored-man-pages golang jsontools nmap postgres httpie genpass)
source $ZSH/oh-my-zsh.sh
export EDITOR="vim"
export GIT_EDITOR="vim"
export HOMEBREW_NO_ANALYTICS=1

neofetch

# local zshrc
if [[ -f $HOME/.zshrc_local ]]; then
    source $HOME/.zshrc_local
fi

# iTerm2 shell integration
if [[ -f $HOME/.iterm2_shell_integration.zsh ]]; then
    source $HOME/.iterm2_shell_integration.zsh
fi

# includes
source $HOME/.zshrc_alias
source $HOME/.zshrc_fn

# variables
export JAVA14="$(/usr/libexec/java_home -v 14)"
export JAVA_HOME="$JAVA14"
export JAVA_BIN="$JAVA_HOME/bin"
export GOPATH=$(go env GOPATH)
export PATH=$GOPATH/bin:$PATH
export PATH="$JAVA_BIN:$PATH"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
  autoload -Uz compinit
  compinit
fi

# inits
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# binds
bindkey -s '^S' "git status\n"
bindkey -s '^ ' 'fzf_alias^M'
bindkey -s '^x' 'fzf_git_checkout^M'

# HSTR configuration
alias hh=hstr                         # hh to be alias for hstr
setopt histignorespace                # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor            # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j" # bind hstr to Ctrl-r (for Vi mode check doc)
