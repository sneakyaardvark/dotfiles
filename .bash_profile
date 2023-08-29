# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
[ -f $HOME/.bash_private ] && . $HOME/.bash_private
#exports

export QT_QPA_PLATFORMTHEME=qt5ct # enable qt5ct for theming/config
export GTK_THEME=Adwaita:dark
export PATH=$HOME/.local/bin:$PATH
export EDITOR=vi
export VISUAL=nvim
export XDG_DATA_DIRS=/home/andrew/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share

# If running from tty1 start sway
#if [ "$(tty)" = "/dev/tty1" ]; then
#	exec dbus-run-session sway
#fi

# wayland exports. not needed with emptty script
#if [ "$XDG_SESSION_DESKTOP" = "sway" ]; then
#	export _JAVA_AWT_WM_NONREPARENTING=1
#	export MOZ_ENABLE_WAYLAND=1 # enable wayland backend for firefox
#	export QT_QPA_PLATFORM=wayland-egl # fix qt programs not using wayland
#fi


# Added by Toolbox App
export PATH="$PATH:/home/andrew/.local/share/JetBrains/Toolbox/scripts"

if [ -e /home/andrew/.nix-profile/etc/profile.d/nix.sh ]; then . /home/andrew/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
