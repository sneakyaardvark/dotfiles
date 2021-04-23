# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

#exports
export MOZ_ENABLE_WAYLAND=1

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway
fi
