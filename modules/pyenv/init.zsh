if type pyenv &> /dev/null; then
	function pyenv() {
		unset pyenv
		eval "$(command pyenv init -)"
		eval "$(command pyenv virtualenv-init -)"
		pyenv $@
	}
fi

alias py=python
alias py2=python2
alias py3=python3
