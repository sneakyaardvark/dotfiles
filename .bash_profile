# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

#exports
export MOZ_ENABLE_WAYLAND=1 # enable wayland backend for firefox
export QT_QPA_PLATFORM=wayland-egl # fix qt programs not using wayland
export QT_QPA_PLATFORMTHEME=qt5ct # enable qt5ct for theming/config
export SPICETIFY_INSTALL="/home/andrew/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
export EDITOR=vim
export VISUAL=nvim

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway
fi

if [ "$XDG_SESSION_DESKTOP" = "sway" ]; then
	export _JAVA_AWT_WM_NONREPARENTING=1
fi
