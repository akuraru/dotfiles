defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

if which brew then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install git

brew install --cask clipy
brew install --cask slack
brew install --cask fork
brew install --cask visual-studio-code
brew install --cask jasper

brew install colima
brew install docker
brew install docker-compose

if which rbenv then
    brew install rbenv ruby-build

    echo '
# rbenv
eval "$(~/.rbenv/bin/rbenv init - zsh)"' >> ~/.zshrc
fi

if which rbenv then
    brew install goenv

    echo '
# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"' >> ~/.zshrc
fi

# Mac App Store
mas install 445189367 # PopClip
mas install 425955336 # Skitch
mas install 1081413713 # GIF Brewery 3
