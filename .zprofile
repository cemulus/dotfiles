if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

export IS_REMOTE_MACHINE=0

# firefox
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_X11_EGL=1
export MOZ_USE_XINPUT2=1

# go
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH=$PATH:"$GOPATH/bin":"$GOROOT/bin"

# ruby
export PATH=$PATH:"§/opt/homebrew/lib/ruby/gems/3.3.0/bin"

# brew
export PATH="/opt/homebrew/sbin:$PATH"
export HOMEBREW_NO_ANALYTICS=1


# gcloud
if [ -f '${HOME}/projects/sdk/path.zsh.inc' ]; then . '${HOME}/projects/sdk/path.zsh.inc'; fi
