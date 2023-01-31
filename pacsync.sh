#!/bin/bash
updatefile=~/.config/i3/pacsync.info
aurfile=~/.config/i3/aursync.info

if [ -f $updatefile ]
then
	rm $updatefile
fi

if [ -f $aurfile ]
then
	rm $aurfile
fi

pacman -Quq | wc -l >> $updatefile
#cower -u | wc -l >> $aurfile
yay -aQu | wc -l >> $aurfile


echo "Pacman: "$(exec cat $updatefile)" | AUR: "$(exec cat $aurfile)
