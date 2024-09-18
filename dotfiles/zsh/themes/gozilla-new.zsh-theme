# A slightly altered version of the `gozilla` theme for `ohmyzsh`.

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status} %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='$(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} +"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} M"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%} R"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[bright-grey]%} *"
