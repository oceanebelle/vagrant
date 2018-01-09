#!/usr/bin/env bash

echo "LANG=en_US.UTF-8" >> /etc/environment
echo "LANGUAGE=en_US.UTF-8" >> /etc/environment
echo "LC_ALL=en_US.UTF-8" >> /etc/environment
echo "LC_CTYPE=en_US.UTF-8" >> /etc/environment

add-apt-repository -y ppa:webupd8team/java

apt-get update
apt-get -y upgrade

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections 
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt-get -y install oracle-java8-installer

### apache sample
#apt-get install -y apache2
#if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
#fi