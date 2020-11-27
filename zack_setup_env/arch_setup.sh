sudo pacman -S wget
wget https://linux.dropbox.com/fedora/rpm-public-key.asc
gpg --import rpm-public-key.asc
yay -S dropbox
ld sync files through Dropbox now

yay -S hstr-git
sudo pacman -S chezmoi
chezmoi init https://github.com/Zackhardtoname/dotfiles.git
chezmoi update 
sudo pacman -S thefuck
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim +PlugInstall +qall
sudo pacman -S xclip
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
