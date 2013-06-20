# shell configuration is done via the collection of files in the .bash
# directory. all files (that exist) are sourced as listed below.
for file in ~/.bash/{path,prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# set some shell options
shopt -s nocaseglob   # ignore case when doing file name expansion
shopt -s cdspell      # ignore minor spelling errors when expanding
shopt -s histappend   # append history instead of overwritting
shopt -s no_empty_cmd_completion  # don't complete on accidental tab on empty line
