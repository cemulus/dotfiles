# Path of oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell" # set by `omz`

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    git
    fasd
    fzf
    shrink-path
    docker
    kubectl
    colored-man-pages
    zsh-completions
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Custom prompt
  PROMPT="%(?:%{$fg_bold[green]%}%n:%{$fg_bold[red]%}%n)"
  PROMPT+=' %{$fg[blue]%}$(shrink_path -f -3)%{$reset_color%} $(git_prompt_info)'
  # RPROMPT='$(git_prompt_status)'
  
  # $(git_prompt_info)
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}("
  ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✗%{$fg[red]%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="" #"%{$fg[yellow]%} ✓%{$fg[red]%}"
  
  # $(git_prompt_status)
  # ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}A%{$reset_color%}"
  # ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}M%{$reset_color%}"
  # ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}D%{$reset_color%}"
  # ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[red]%}R%{$reset_color%}"
  # ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yello]%}Um%{$reset_color%}"
  # ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}?%{$reset_color%}"

export EDITOR='vim'

if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_DEFAULT_OPS="--extended"
fi


# Alias definitions.
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# Function definitions.
if [ -f ~/.zsh_functions ]; then
    . ~/.zsh_functions
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(gh completion -s zsh)"
eval "$(minikube completion zsh)"
eval "$(kubectl completion zsh)"

