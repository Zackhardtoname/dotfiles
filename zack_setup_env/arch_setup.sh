sudo pacman -S wget

# Dropbox
wget https://linux.dropbox.com/fedora/rpm-public-key.asc
gpg --import rpm-public-key.asc
yay -S dropbox
ln -s ~/Dropbox\ \(University\ of\ Michigan\) Dropbox
# could now sync files through Dropbox now

yay -S hstr-git
sudo pacman -S chezmoi
chezmoi init https://github.com/Zackhardtoname/dotfiles.git
# or install github cli and then: chezmoi cd && gh repo clone dotfiles

chezmoi update 
sudo pacman -S thefuck
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim +PlugInstall +qall
sudo pacman -S xclip
sudo pacman -S screen
sudo pacman -S python-pip
python3 -m pip install --user --upgrade pynvim

sudo pacman -S zsh

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh gruvbox theme
curl -L https://raw.githubusercontent.com/sbugzu/gruvbox-zsh/master/gruvbox.zsh-theme > ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme

# set up git ssh

# Chinese font
yay -S noto-fonts-sc

# i3
sudo pacman -S ttf-font-awesome
yay -S i3-agenda-git
sudo pacman -S rofi
# clone i3 scripts
mkdir /home/zack/.config/i3blocks/scripts
git clone https://github.com/vivien/i3blocks-contrib /home/zack/.config/i3blocks/scripts
pip install i3-agenda

# pick rofi theme: rofi-theme-selector

# remember to log out to see things like icons properly

# Google accounts & Chrome extension logins

sudo pacman -Syu htop
yay -S slack-electron
yay -S pycharm-professional
# idealvim, tabnine, .ignore, gruvbox, 

sudo pacman -S smplayer
yay -S masterpdfeditor
# install pdfstudio products and add their entries to rofi

# Wine
# snipaste

# wechat
# include multilib
yay -S deepin-wine-wechat
sudo pacman -Ss wqy-microhei
install through start menu
env WINEPREFIX="$HOME/.deepinwine/Deepin-WeChat" winecfg # change graphics dpi to 192

# msigd

sudo pacman -S neofetch
yay -S typora 

yay -S update-grub
sudo pacman -S packagekit-qt5

# swap screen
pacman -Syu jq
pip install numpy

# msigd
# clone the repo
sudo pacman -S libusb hidapi
make TARGETOS=arch
cd ..
sudo mv msigd /opt
