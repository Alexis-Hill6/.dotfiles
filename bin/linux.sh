#!/bin/bash

CURR_OS=$(uname)
if (( "$CURR_OS" != *"Linux"*)); then
	echo "Error" >> linuxsetup.log
	exit
fi

mkdir ~/.TRASH

mkdir /.dotfiles/.vimrc .bup_vimrc
echo "the current .vimrc file was changed to '.bup_vimrc'" >>linuxsetup.log

cat ~/.dotfiles/etc/vimrc > ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc
