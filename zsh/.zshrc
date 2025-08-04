# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
WIN_DOWNLOADS="/mnt/c/Users/maramdin/Downloads/"
WIN_DOCUMENTS="/mnt/c/Users/maramdin/OneDrive - IQERA/Documents"
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git
         zsh-syntax-highlighting
         zsh-autosuggestions
         sudo
         docker
         )

source $ZSH/oh-my-zsh.sh
#alias jumpansible='ssh 10.1.85.97'
alias jumpansible='cwall vslans1ri097'
alias centreon='ssh 10.1.85.22'
alias jumppra='ssh 10.30.99.10'
alias vpn='sudo systemctl restart wsl-vpnkit'
alias ll='ls -lah'
alias vi='nvim'

unsetopt nomatch
setopt rmstarsilent
#eval "$(starship init zsh)"
source ~/.pass
alias cwall='~/.cwall.exp'
alias wallix='~/.wallix.exp'
alias cwalli='~/.cwalli.exp'
#  ssh "10.201.2.10" -l "Interactive@$server:SSH:Servicing_Hosts:adm_mramdin"
#}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export http_proxy="http://127.0.0.1:3128"
export https_proxy="http://127.0.0.1:3128"
export no_proxy="localhost,127.0.0.1,.docker.internal"
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach || tmux new-session
fi
