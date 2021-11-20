#!/bin/bash

apt purge apktool -y
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.0.jar
mv apktool_2.4.0.jar apktool.jar
mv apktool.jar /usr/bin
mv apktool /usr/bin
chmod +x /usr/bin/apktool*
apktool
