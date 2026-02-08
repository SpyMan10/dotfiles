PROMPT="%F{087} %~%{$reset_color%}%}"
PROMPT+='$(git_prompt_info)'
PROMPT+="%{$reset_color%}"
PROMPT+=$'\n'
PROMPT+="❯ "

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{183}(git:%F{177}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%F{183})"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{183})"
