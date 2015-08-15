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
	echo "Creating symlink for $file"
	mv $target "$HOME/.dotfiles/.backup"
	ln -s $file $target
done


source ~/.bash_profile
