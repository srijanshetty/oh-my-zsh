#function for pwd
function get_pwd(){
	echo "${PWD/$HOME/~}"
}

#local time, color coded by last return code
name="%(?.%{$fg_bold[green]%}.%{$fg_bold[red]%})%n%{$reset_color%}"

#Right prompt wiht pwd and git info
PROMPT='
${name} at $reset_color$fg_bold[cyan]%m: $fg_no_bold[magenta][$(get_pwd)] $fg_no_bold[blue]$(git_prompt_info)%{$reset_color%}						 
➜ '

#left prompt with the time
RPROMPT='[%W %t]%{$reset_color%}'

#customizing git info
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_no_bold[blue]%})%{$fg[yellow]%}✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_no_bold[blue]%})%{$fg[yellow]%}✓ %{$reset_color%}"


