#!/usr/bin/env bash
cd "$(dirname "$0")"

# Get OS
if [ "$(uname -s)" = "Darwin" ]; then
    OS="OSX"
else
    OS=$(uname -s)
fi


# Symlink base files to home directory
echo "Creating symlinks..."
tolink=$( find -H "$HOME/.dotfiles" -maxdepth 3 -name '*.symlink' )
for file in $tolink; do
	target="$HOME/.$( basename $file ".symlink" )"
	if [[ -f $target && ! -L $target ]]; then
		mv $target "$HOME/.dotfiles/.backup"
	fi
	if [[ ! -f $target && ! -L $target ]]; then
		echo "Creating symlink for $file"
		ln -s $file $target
	fi
done
echo "Done."


source ~/.bash_profile
