# ------------------------------------------------------------------------
# Tim Kelty's oh-my-zsh theme
# ------------------------------------------------------------------------

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GREEN%}"

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY="%{$RED%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$GREEN%}"

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}deleted"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}modified"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE%}untracked"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" [%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="] "

local pipe='%{$WHITE%}|%{$RESET_COLOR%}'
local user='%{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
local pwd='%{$fg[blue]%}%~%{$reset_color%}'
local rvm=''
if which rvm-prompt &> /dev/null; then
  rvm='%{$fg[yellow]%}[$(rvm-prompt i v g)]%{$reset_color%} '
else
  if which rbenv &> /dev/null; then
    rvm='%{$fg[yellow]%}[$(rbenv version | sed -e "s/ (set.*$//")]%{$reset_color%} '
  fi
fi
local git_branch='$(parse_git_dirty)$(current_branch)%{$GREEN_BOLD%}$(git_prompt_short_sha)%{$RESET_COLOR%}'


PROMPT="
${user} ${pwd}
${git_branch}${rvm}
$ "
RPROMPT=""
