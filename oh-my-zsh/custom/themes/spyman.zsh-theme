PROMPT="┌ %F{087}  %~%{$reset_color%}%}"
PROMPT+='$(git_prompt_info)'
PROMPT+="%{$reset_color%}"
PROMPT+=$'\n'
PROMPT+="└  "

TRANSIENT_PROMPT_PROMPT="$PROMPT"

TRANSIENT_PROMPT_TRANSIENT_PROMPT="%F{004%}  %{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{183}(git:%F{177}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{183})"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{183})"
