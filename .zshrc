# Shared shell settings
source $HOME/.profile

# Oh My Zsh
DISABLE_UPDATE_PROMPT=true
COMPLETION_WAITING_DOTS=true
plugins=(jira bundler bower rsync rbenv nvm autojump capistrano extract gem git github osx pip ssh-agent git-remote-branch grunt)

# JIRA Plugin
JIRA_URL="https://fusionary.jira.com"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Prompt
source $DOTFILES/.zsh-theme

# Override with my aliases
# source $DOTFILES/.aliases

# Turn off annoying auto-correction
unsetopt correct_all
