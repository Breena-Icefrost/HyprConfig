#!/usr/bin/sh

cat ~/.config/hyprconfig/logo

while true; do
	ENTRY=$(ls ~/.config/hyprconfig/configurations/ | smenu -t -W $'\n' -m 'Select what configuratiton you want to change;')

	if [[ $ENTRY = 'EXIT' ]]; then
		echo 'Closing HyprConfig...'
		break
	else 
		if [[ -d ~/.config/hyprconfig/configurations/$ENTRY ]]; then
			sh ~/.config/hyprconfig/configurations/$ENTRY/initializer.sh $$
		fi
	fi

done
