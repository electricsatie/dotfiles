# load ".bashrc" !
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH


# Setting PATH for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Setting PATH for go
export GOPATH=~/dev/go
export PATH=$GOPATH/bin:$PATH

# Setting PATH for Node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH
