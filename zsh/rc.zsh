source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

source_if_in_wsl () {
    if test -r "/proc/version"; then
        source_if_exists "$1"
    fi
}

source_if_in_wsl $DOTFILES/zsh/wsl.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source_if_exists $HOME/.env.sh
source_if_exists $DOTFILES/zsh/variables
source_if_exists $DOTFILES/zsh/aliases.zsh
source_if_exists $DOTFILES/zsh/functions.zsh
source_if_exists $DOTFILES/zsh/p10k.zsh
source_if_exists $DOTFILES/zsh/oh-my-zsh.zsh

source_if_exists $DOTFILES/neovim/path.nvim

source_if_exists $HOME/.asdf/asdf.sh


# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# path
export PATH=$PATH:/usr/local/go/bin

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm 

# sst
export PATH=/home/a137453/.sst/bin:$PATH
