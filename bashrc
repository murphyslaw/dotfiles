[[ -s $HOME/.bash/aliases ]] && source $HOME/.bash/aliases
[[ -s $HOME/.bash/paths ]] && source $HOME/.bash/paths
[[ -s $HOME/.bash/config ]] && source $HOME/.bash/config
[[ -s $HOME/.bash/completions ]] && source $HOME/.bash/completions

# use .localrc for settings specific to one system
[[ -s $HOME/.localrc ]] && source $HOME/.localrc

# rbenv initialization
eval "$(rbenv init -)"