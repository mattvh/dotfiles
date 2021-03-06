# Count the number of lines of code in a git repository
alias gitlines="git ls-files | xargs wc -l"

# Untrack items that were deleted from a git repository
alias gitrmgone="git diff --diff-filter=D --name-only -z | xargs -0 git rm"

# Undo git push
alias gitundopush="git push -f origin HEAD^:master"

# Turn a VIDEO_TS folder iso a playable ISO
# Syntax: dvdiso DVD_NAME /path/to/VIDEO_TS/parent/folder
alias dvdiso="hdiutil makehybrid -udf -udf-volume-name $1 -o $1.iso $2"

# Download a YouTube video URL as an MP3
alias ytmp3="youtube-dl --extract-audio --audio-format mp3 $1"
alias ytm4a="youtube-dl --extract-audio --audio-format m4a $1"

# Edit /etc/hosts
alias hosts='sudo vim /etc/hosts'

# Flush Directory Service cache
alias flushcache="dscacheutil -flushcache"

# IP addresses
alias ipext="dig +short myip.opendns.com @resolver1.opendns.com"
alias iplocal="ipconfig getifaddr en1"

# Open file in graphical MacVim
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# Always use color output for `ls`"
if [[ "$OSTYPE" =~ ^darwin ]]; then
	alias ls="command ls -GF"
else
	alias ls="command ls -F --color"
	export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
fi
