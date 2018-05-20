# Autocompletion for kubectl, the command line interface for Kubernetes
#
# Author: https://github.com/pstadler

# This command is used ALOT both below and in daily life

# Lazy load kubectl complete alias k=kubectl
#
function _k() {
  if [ $commands[kubectl] ]; then
    source <($commands[kubectl] completion zsh)
  fi
  unset -f _k
  unalias kubectl
  alias k=kubectl
  $commands[kubectl] $*
}

alias k=_k
alias kubectl=_k

# Drop into an interactive terminal on a container
alias keti='k exec -ti'

# Manage configuration quickly to switch contexts between local, dev ad staging.
alias kcuc='k config use-context'
alias kcsc='k config set-context'
alias kcdc='k config delete-context'
alias kccc='k config current-context'

# Pod management.
alias kgp='k get pods'
alias klp='k logs pods'
alias kep='k edit pods'
alias kdp='k describe pods'
alias kdelp='k delete pods'

# Service management.
alias kgs='k get svc'
alias kes='k edit svc'
alias kds='k describe svc'
alias kdels='k delete svc'

# Secret management
alias kgsec='k get secret'
alias kdsec='k describe secret'
alias kdelsec='k delete secret'

# Deployment management.
alias kgd='k get deployment'
alias ked='k edit deployment'
alias kdd='k describe deployment'
alias kdeld='k delete deployment'
alias ksd='k scale deployment'
alias krsd='k rollout status deployment'

# Rollout management.
alias kgrs='k get rs'
alias krh='k rollout history'
alias kru='k rollout undo'
