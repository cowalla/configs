#!/usr/bin/env bash

echo "Welcome to the setup of your computer."
echo "Step one: install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install zsh"
brew install zsh

echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Changing shells to zsh"
chsh -s "$(which zsh)"

echo "Change your zsh profile to flazz..."
rm ~/.zshrc && cp zshrc.EXAMPLE ~/.zshrc

echo "Installing pip..."
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py

echo "Before continuing make sure you add the pip3 path to your PATH directory. Update __pythonbin in .zshrc"
# TODO: DO this automatically. Sample install msg.
# WARNING: The scripts pip, pip3 and pip3.8 are installed in '/Users/gabe/Library/Python/3.8/bin' which is not on PATH.
# Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.

echo "Installing virtualenv..."
pip install virtualenv

echo "install Spectacle"
curl https://s3.amazonaws.com/spectacle/downloads/Spectacle+1.2.zip --output Spectacle+1.2.zip
echo "extract Spectacle and install it manually"
open .

