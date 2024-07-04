export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode reminder

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Standard plugins:	$ZSH/plugins/
# Custom plugins: 	$ZSH_CUSTOM/plugins/
plugins=(
	git
	fasd
	fzf
	shrink-path
	docker
	kubectl
	golang
	colored-man-pages
	zsh-completions
	zsh-autosuggestions
	zsh-syntax-highlighting
	you-should-use
	gh
	aws
	evalcache
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source ~/.zsh_functions
source ~/.zsh_completions

# Custom prompt
PROMPT="%(?:%{$fg_bold[green]%}%n:%{$fg_bold[red]%}%n)"
if [ $IS_REMOTE_MACHINE -eq 1 ]; then
	PROMPT+='%{$reset_color%}@%{$fg_bold[blue]%}%m'
fi
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
