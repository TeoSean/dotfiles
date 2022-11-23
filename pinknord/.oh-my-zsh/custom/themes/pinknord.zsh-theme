# Default OMZ theme for Archcraft

if [[ "$USER" == "root" ]]; then
  PROMPT="%(?:%{$FG[219]%}%{$FG[171]%}%{$FG[164]%} :%{$FG[219]%} )"
  PROMPT+='%{$FG[219]%}  %c%{$reset_color%} $(git_prompt_info)'
else
  PROMPT="%(?:%{$FG[219]%}%{$FG[171]%}%{$FG[164]%} :%{$FG[219]%} )"
  PROMPT+='%{$FG[219]%}  %c%{$reset_color%} $(git_prompt_info)'
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}  git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
