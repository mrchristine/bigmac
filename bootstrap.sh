#!/bin/bash
set -x 

# Check if xcode is installed

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cat bashrc details here to pre-populate

# install wget
brew install wget
# install python from brew to pull dependencies such as pip / openssl
brew install python
# install pandas
pip install pandas

# install sbt from brew
brew install sbt
# install 7zip
brew install p7zip
# install jq for json parsing https://stedolan.github.io/jq/download/
brew install jq
# install latest version of java supported (jdk 8)
brew install Caskroom/cask/java
# install maven
brew install maven

# upgrade pip
pip install --upgrade pip
# install boto
pip install boto

# install syntax highlighter mac
brew install source-highlight

# install shiftit for window management
brew cask install shiftit
# aws cli
brew install awscli

# install dos2unix
brew install dos2unix
# install gnu sed
brew install gnu-sed
# brew install gnu coreutils
brew install coreutils
# install gnu grep
brew tap homebrew/dupes
brew install grep

# install requests for python
pip install requests

# install scala
brew install scala --with-docs
# Need to create a gist to install previous version https://github.com/Homebrew/homebrew/blob/5024c0b275022b8edda99af3ddce956482a481e8/Library/Formula/scala.rb
# Go to the homebrew github to find previous versions to install and use the raw gist to install that version 
# Unlink the latest version first, then install 
brew unlink scala
brew install https://github.com/Homebrew/homebrew/blob/5024c0b275022b8edda99af3ddce956482a481e8/Library/Formula/scala.rb --with-docs

# vim scala syntax highlighting
mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do wget --no-check-certificate -O ~/.vim/$d/scala.vim https://raw.githubusercontent.com/derekwyatt/vim-scala/master/syntax/scala.vim; done

# Download iterm2 color schema
wget "https://github.com/mbadolato/iTerm2-Color-Schemes/tarball/master"
