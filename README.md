#Tengo la distro de ArchLinux con Kde Plasma y Kitty de terminal con zsh de shell esta es mi configuracion 


#tienes que instalr 

sudo pacman -S kitty
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions
sudo pacman -S lsd bat

#cambiar el shell por defecto tanto en usurario como en root

sudo usermod -s /usr/bin/zsh $USER

#lo verificas con 

echo $SHELL

#instalar yay

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


#Instalar powerlevel10k de Romkatv

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo 'source \~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc


Arch Linux

yay -S --noconfirm zsh-theme-powerlevel10k-git

echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zsh

#para que puedas copiar de nvim con nchad al clipboard tienes que tener instalado el paquete xclip

sudo pacman -S xclip

#para la maquina virtual en gnome boxes para que se pueda pasar del clipboar bidireccionalmente se tiene que intalar en la maquina virtual el siguiente comando

sudo pacman -S spice-vdagent
sudo systemctl enable --now spice-vdagent



