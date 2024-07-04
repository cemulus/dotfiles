[ -d "$HOME/bin" ] && PATH=$PATH:"$HOME/bin"
[ -d "$HOME/.local/bin" ] && PATH=$PATH:"$HOME/.local/bin"

export EDITOR="vim"
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
case "$(uname -s)" in
	Linux*)  [ -d '/home/linuxbrew/.linuxbrew/bin' ] && eval /home/linuxbrew/.linuxbrew/bin/brew shellenv;;
	Darwin*) [ -d '/opt/homebrew/bin' ] && export PATH=$PATH:"/opt/homebrew/bin":"/opt/homebrew/sbin";;
esac
export HOMEBREW_NO_ANALYTICS=1

# fzf
export FZF_DEFAULT_OPTS="--extended"

# gcloud
[ -f ~/projects/sdk/path.zsh.inc ] && . ~/projects/sdk/path.zsh.inc
