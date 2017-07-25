# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

export GOROOT=/usr/lib/golang
export GOPATH=/usr/share/gocode
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
