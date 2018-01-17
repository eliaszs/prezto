# Autocompletion for kops, the command line interface for Kubernetes Operations

if [ $commands[kops] ]; then
  source <(kops completion zsh)
fi
