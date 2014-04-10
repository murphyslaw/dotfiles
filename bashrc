# rbenv initialization
eval "$(rbenv init -)"

[[ -s $HOME/.bash/aliases ]] && source $HOME/.bash/aliases
[[ -s $HOME/.bash/paths ]] && source $HOME/.bash/paths
[[ -s $HOME/.bash/config ]] && source $HOME/.bash/config
[[ -s $HOME/.bash/completions ]] && source $HOME/.bash/completions

# use .localrc for settings specific to one system
[[ -s $HOME/.localrc ]] && source $HOME/.localrc

# pro cd function
pd() {
  projDir=$(pro search $1)
  cd ${projDir}
}

# travis
source /Users/falk/.travis/travis.sh
