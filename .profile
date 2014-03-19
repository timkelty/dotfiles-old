# Load the shell dotfiles
for file in ~/.dotfiles/.{path,exports,aliases,functions,config}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# rbenv
eval "$(rbenv init -)"

# nvm
source ~/.nvm/nvm.sh

# Defeat node errors for max open files
# http://ghickman.co.uk/2012/02/25/extending-os-x-lions-maxfiles-limit-for-neo4j.html
launchctl limit maxfiles 16384 32768

# Autoload files in $DOTFILES/functions when first called
fpath=(
 $DOTFILES/functions
 "${fpath[@]}"
)
autoload -Uz ${fpath[1]}/*(:t)
