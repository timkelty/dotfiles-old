# Load the shell dotfiles
for file in ~/.dotfiles/.{path,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# rbenv
eval "$(rbenv init -)"
