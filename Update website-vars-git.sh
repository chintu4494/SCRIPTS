#!/bin/bash
GIT=git@github.com:chintu4494/chintu4494.github.io.git
REPO=chintu4494.github.io
WEBSITE=https://bootstrapmade.com/content/templatefiles/MyResume/MyResume.zip
PKG=apt
FILE=MyResume
sudo $PKG update
sudo $PKG install wget git unzip figlet -y
git clone $GIT
mkdir -p webfiles
cd webfiles
sudo wget $WEBSITE
sudo unzip -o $FILE.zip
sudo rm -rf ~/$REPO/*
sudo cp -r $FILE/* ~/$REPO/
cd ..
sudo rm -rf webfiles
cd ~/$REPO
git add .
git status
sleep 4
git commit -m "$(date)"
git push -f
figlet done
