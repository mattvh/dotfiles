default_username='mattharzewski'
short_username='Matt'


if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi


function git_info() {
	# check if we're in a git repo
	git rev-parse --is-inside-work-tree &>/dev/null || return

	# quickest check for what branch we're on
	branch=$(git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')

	# check if it's dirty (via github.com/sindresorhus/pure)
	dirty=$(git diff --quiet --ignore-submodules HEAD &>/dev/null; [ $? -eq 1 ]&& echo -e "*")

	echo "["$branch$dirty"]"
}


# Only show username/host if not default
function promptusername() {
	if [ $USER != $default_username ]; then
		echo "$USER";
	else
		echo "$short_username";
	fi
}

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]$(promptusername)@\h\[$(tput setaf 7)\]:\[$(tput setaf 6)\]\W\[$(tput setaf 7)\]$ \[$(tput sgr0)\]"
