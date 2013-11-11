# Shared shell settings
source $HOME/.profile

# Oh My Zsh
DISABLE_UPDATE_PROMPT=true
plugins=(autojump cap bundler extract gem git github osx pip ssh-agent git-remote-branch grunt)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Prompt
source $DOTFILES/.zsh-theme

# Turn off annoying auto-correction
unsetopt correct_all
