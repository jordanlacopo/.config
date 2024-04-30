f test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# development tools
brew install git
brew install tmux
brew install zsh
brew install zoxide
brew install fish
brew install lazygit
brew install joshmedeski/sesh/sesh
brew install fzf
# install neovim
brew install neovim/neovim/neovim
#Gitmux
brew tap arl/arl
brew install gitmux
exit 0
