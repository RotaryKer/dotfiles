# set coding environment with neovim
echo export XDC_CONFIG_HOME=~/dotfiles >> ~/.zshrc
source ~/.zshrc
mkdir -p ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm installer.sh

# prepare c/c++ LSP
sudo apt install clang-6.0 clang-tools-6.0
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 100
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-6.0 100
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-6.0 100

# prepare python LSP
pip3 install --user python-language-server

# prepare Golang LSP

