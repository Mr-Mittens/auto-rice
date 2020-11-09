#!/bin/sh

chmod +x pkgs.sh && ./pkgs.sh    

git clone --depth 1 https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si --needed --noconfirm && cd .. && yay -S nvidia-390xx --needed --noconfirm
    
    
git clone --depth 1 https://gitlab.com/mr-kat/dot-files.git && cd dot-files/dwm-6.2


sudo rm -f config.h && sudo make clean install && cd .. 


cd slstatus && sudo make clean install && cd .. && cd black-GTK/sample && sudo make install && cd 


cd dotfiles && cp -r .config .xinitrc .vim .vimrc .newsboat .bashrc /$HOME/ && cd && startx  
