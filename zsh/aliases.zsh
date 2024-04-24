# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias tmuxconfig="vim ~/.tmux/tmux.conf"
alias zshsource="source ~/.zshrc"
alias tmuxsource="tmux source $TMUXCONF"

alias vim=nvim
alias pipenv="python3 -m pipenv"
alias python="python3"

alias agps="aws_profiles"

#Other
alias fman="compgen -c | fzf | xargs man"
alias ftldr="compgen -c | fzf | xargs tldr"

#NVIM colors
export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'