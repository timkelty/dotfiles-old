# Load the shell dotfiles
for file in ~/.dotfiles/.{path,exports,aliases,functions,config}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# rbenv
eval "$(rbenv init -)"
