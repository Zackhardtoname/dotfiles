# Download Signal, Maccy, Rectangle, Snipaste, MonitorControl

touch ~/.hushlogin

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install hstr neovim gh thefuck zoxide pyenv
gh auth login
# Create ~/.config/chezmoi/chezmoi.toml
brew install chezmoi
chezmoi apply

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall

pyenv install 3.10.4
pyenv global 3.10.4
pyenv rehash
pip install neovim

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# Import PyCharm settings; update plugins; import settings again

# create ~/Library/KeyBindings/ and copy DefaultKeyBinding.dict there
 
