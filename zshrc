# rbenv initialization
eval "$(rbenv init - zsh)"

[[ -s $HOME/.zsh/aliases ]] && source $HOME/.zsh/aliases
[[ -s $HOME/.zsh/paths ]] && source $HOME/.zsh/paths
[[ -s $HOME/.zsh/config ]] && source $HOME/.zsh/config
[[ -s $HOME/.zsh/completions ]] && source $HOME/.zsh/completions

# use .localrc for settings specific to one system
[[ -s $HOME/.localrc ]] && source $HOME/.localrc
