#Tengo la distro de ArchLinux con Kde Plasma y Kitty de terminal con zsh de shell esta es mi configuracion 


#tienes que instalr 

sudo pacman -S kitty
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions


#cambiar el shell por defecto tanto en usurario como en root

sudo usermod -s /usr/bin/zsh $USER

#lo verificas con 

echo $SHELL

