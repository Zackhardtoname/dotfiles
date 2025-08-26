# Maybe set up the subvolume names for timeshift following the guide: https://www.geeksforgeeks.org/linux-unix/how-to-setup-timeshift-with-btrfs-in-fedora/, so you don't need to follow the reddit guide below.
# To get external monitor and monitor audio to work, among other things, follow this guide: https://paulsorensen.io/fedora-kde-plasma-post-installation-guide/#drivers
# Download insync to get Google Drive syncing going

sudo dnf install hstr
sudo dnf install google-chrome-stable git nvim thefuck zoxide
# Set up git before chezmoi so the repo uses ssh key: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Zackhardtoname

sudo dnf install python3-pip
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
python3 -m pip install --user --upgrade pynvim

sudo dnf install zsh

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh gruvbox theme
curl -L https://raw.githubusercontent.com/sbugzu/gruvbox-zsh/master/gruvbox.zsh-theme > ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme

# set up git ssh

sudo dnf install htop fastfetch smplayer discord timeshift
# Set up timeshift https://www.reddit.com/r/Fedora/comments/1ap556b/comment/kq5hy60/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
# Install typora via Discovery
# Install masterpdfeditor via Discovery
# Install rescuetime
# Install jetbrains
# Install cursor
# Install wechat
# Install snipaste
# Install pdfstudio 
