# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

echo "hello from .profile" >> /home/chris/testdots.out

# setxkbmap -print
# ctrl(nocaps)
# via gnome tweaks
setxkbmap -option "ctrl:nocaps"
xcape -e '#66=Escape'

echo "second hello from .profile" >> /home/chris/testdots.out
# if running bash
if [ -n "$BASH_VERSION" ]; then

echo "inside if running bash " >> /home/chris/testdots.out
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then

echo "inside if bin " >> /home/chris/testdots.out
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
echo "inside if local bin " >> /home/chris/testdots.out
    PATH="$HOME/.local/bin:$PATH"
fi
