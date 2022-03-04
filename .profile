if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_X11_EGL=1

export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH=:$PATH:"$GOPATH/bin":"$GOROOT/bin"
export PATH=$PATH:"/usr/local/lib/nodejs/node-v16.13.1-linux-x64/bin"
