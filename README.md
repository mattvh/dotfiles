#Matt's ~/.dotfiles

These files make up my current terminal environment. This repo is mostly for my own convenience, but you're more than welcome to borrow bits of it for your own setup. This is sort of a fork of [Paul Irish's](https://github.com/paulirish/dotfiles) similar repo, though I trimmed most of his configurations out in favor of my own. If you're looking to set something like this up yourself, [paulirish/dotfiles](https://github.com/paulirish/dotfiles), [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/), and [dotfiles.github.io](http://dotfiles.github.io/) are the places to check out.

# Installation

**Warning:** This will clobber your existing dotfiles. Unless you know what you're doing and you're sure you want to **replace your .bash_profile, .bashrc, .vimrc**, and similar files, **do not run these commands.**

    git clone https://github.com/redwallhp/dotfiles.git
    cd dotfiles
    ./install-deps.sh
    ./sync.sh
    
To set set some OS X settings and install essential utilities through Homebrew:

    ./.osx
    ./.brew