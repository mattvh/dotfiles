# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ./.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file


# rbenv init
# rbenv init
if hash rbenv 2>/dev/null; then
	eval "$(rbenv init -)"
fi


# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"


# Colors 
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=auto'
