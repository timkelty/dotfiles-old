# Shared shell settings
source $HOME/.profile

# Oh My Zsh
DISABLE_UPDATE_PROMPT=true
COMPLETION_WAITING_DOTS=true
plugins=(bower rsync rbenv nvm autojump capistrano extract gem git github osx pip ssh-agent git-remote-branch grunt)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Prompt
source $DOTFILES/.zsh-theme

# Override with my aliases
# source $DOTFILES/.aliases

# Turn off annoying auto-correction
unsetopt correct_all
