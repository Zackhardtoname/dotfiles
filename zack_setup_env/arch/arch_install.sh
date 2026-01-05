# on the host machine
# sudo pacman -S openssh

sudo pacman -S xf84-video-fbdev xorg xorg-xinit base-devel nitrogen picom git firefox

git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S 

# https://youtu.be/Csc8Y5_YLRE
sudo pacman -Syu
sudo pacman -S xorg
sudo pacman -S plasma-meta kde-applications lightdm
sudo systemctl enable lightdm
sudo systemctl enable NetworkManager
reboot

