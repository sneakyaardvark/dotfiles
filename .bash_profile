# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
export WLR_NO_HARDWARE_CURSORS=1
# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway
fi
