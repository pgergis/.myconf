# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

PATH="$HOME/.local/bin:$PATH"

# set PATH to include support for pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Setting PATH for gcc cross-compiler
export PATH="/usr/local/bin/aarch64-none-elf/bin:$PATH"

# Set PATH to include support for Rust Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# swap escape and caps keys
setxkbmap -option caps:swapescape
