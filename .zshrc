# Shared shell settings
source $HOME/.zprofile

# Oh My Zsh
DISABLE_UPDATE_PROMPT=true
COMPLETION_WAITING_DOTS=true
plugins=(bower nvm autojump extract gem osx pip ssh-agent git-remote-branch grunt gulp zsh-syntax-highlighting safe-paste)

# JIRA Plugin
JIRA_URL="https://fusionary.jira.com"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Prompt
# source $DOTFILES/.zsh-theme

# Override with my aliases
source $DOTFILES/.aliases
source $DOTFILES/.functions

# Turn off annoying auto-correction
DISABLE_CORRECTION="true"

# Pure prompt
# https://github.com/sindresorhus/pure
autoload -U promptinit && promptinit
prompt pure

# Autocompletion
eval "$(gulp --completion=zsh)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
