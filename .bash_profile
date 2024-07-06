# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.

# THIS IS FOR OPENRC PROFILE!
if shopt -q login_shell; then
    [[ -f ~/.bashrc ]] && source ~/.bashrc
    [[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && exec dbus-run-session Hyprland
else
    exit 1 # Somehow this is a non-bash or non-login shell.
fi

# THIS IS FOR OPENRC
