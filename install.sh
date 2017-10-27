#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`
sudo -v

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

#Programming Languages
brew install python
pip install --upgrade setuptools
pip install --upgrade pip
brew cask install java

#Dev Tools
brew install git
brew install git-lfs
brew install curl
brew install wget
brew install coreutils
brew install moreutils
brew install findutils
brew install tree
brew install speedtest-cli
brew install awk
brew install trash
brew install telnet
brew install fzf
/usr/local/opt/fzf/install

brew cask install xquartz
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" dash
brew cask install --appdir="/Applications" fiddler
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" evernote
brew cask install --appdir="/Applications" cakebrew
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" macdown
brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" microsoft-remote-desktop-beta
brew cask install --appdir="/Applications" filezilla
brew cask install --appdir="/Applications" wireshark
brew cask install google-cloud-sdk
brew install awscli
brew cask install chefdk


#Communication Apps
brew cask install --appdir="/Applications" slack

#Web Tools
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox

# Random
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" itsycal
brew cask install --appdir="/Applications" caffeine

git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~/.vim_runtime && git pull --rebase && cd -
cd ~/Documents
git clone https://github.com/square/maximum-awesome.git
cd maximum-awesome
rake
