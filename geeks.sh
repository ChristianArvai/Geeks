#!/bin/bash
# 
# Project: geeks
# Author: Christian Arvai 
# Credits: Ubuntu Denmark LoCo Team
# For: All Ubuntu releases from 14.04 to current stabil  
# To: 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

# update ubuntu
sudo apt-get update -y &&

# install mysql and serverklient
sudo apt-get install -y mysql-workbench &&
sudo apt-get install -y mysql-client && 
sudo apt-get install -y mysql-server &&

# install oracle 8 (netbeans8 use oracle8) 
sudo dpkg --configure -a 
sudo apt-get purge -y openjdk-6-jre 
sudo apt-get purge -y openjdk-6-jre-lib 
sudo apt-get purge -y openjdk-6-doc 
sudo apt-get purge -y openjdk-7-jre
sudo apt-get purge -y openjdk-7-jre-lib 
sudo apt-get purge -y openjdk-7-doc 
sudo apt-get purge -y sun-java6-jdk 
sudo apt-get purge -y sun-java6-bin 
sudo apt-get purge -y sun-java6-fonts 
sudo apt-get purge -y sun-java6-jre
sudo apt-get purge -y sun-java6-plugin 
sudo apt-get purge -y sun-java7-jdk 
sudo apt-get purge -y sun-java7-bin
sudo apt-get purge -y sun-java7-fonts 
sudo apt-get purge -y sun-java7-jre 
sudo apt-get purge -y sun-java7-plugin 
sudo apt-get purge -y icedtea-plugin 
sudo apt-get purge -y icedtea-7-plugin 
sudo apt-get purge -y oracle-java7-installer 
sudo apt-get purge -y oracle-java8-installer
sudo add-apt-repository --remove ppa:webupd8team/java
sudo apt-get autoremove 
sudo add-apt-repository ppa:webupd8team/java && 
sudo apt-get update && 
sudo mkdir -p /usr/lib/mozilla/plugins && 
sudo apt-get install -y oracle-java8-installer &&

# install netbeans8
wget http://download.netbeans.org/netbeans/8.0.2/final/bundles/netbeans-8.0.2-linux.sh -O ~/netbeans-8.0.2-linux.sh && 
chmod +x netbeans-8.0.2-linux.sh && 
./netbeans-8.0.2-linux.sh &&
rm ~/netbeans-8.0.2-linux.sh

# install visual-paradigm
mkdir ~/.Visual_Paradigm
wget http://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Linux64.sh -O ~/.Visual_Paradigm/Visual_Paradigm_CE_Linux64.sh && 
chmod +x ~/.Visual_Paradigm/Visual_Paradigm_CE_Linux64.sh && 
cd ~/.Visual_Paradigm
./Visual_Paradigm_CE_Linux64.sh &&
cd ~/
rm ~/.Visual_Paradigm/Visual_Paradigm_CE_Linux64.sh

# install android studio
mkdir ~/.Andriod_Studio
wget https://dl.google.com/dl/android/studio/ide-zips/1.2.2.0/android-studio-ide-141.1980579-linux.zip -O ~/.Andriod_Studio/android-studio-ide-141.1980579-linux.zip && 
cd ~/.Andriod_Studio &&
unzip android-studio-ide-141.1980579-linux.zip && 
cd ~/.Andriod_Studio/android-studio/bin &&
./studio.sh &&
cd ~/
rm ~/Andriod_Studio/android-studio-ide-141.1980579-linux.zip

# install bluefish editor
sudo apt-get install -y bluefish &&

# install git
sudo apt-get install -y git &&

# install aptitude 
sudo apt-get install -y aptitude &&

# install easter egg ;)
sudo apt-get install -y sl &&

# upgrade ubuntu
sudo apt-get upgrade -y && 

# clean ubuntu
sudo apt-get autoremove -y
