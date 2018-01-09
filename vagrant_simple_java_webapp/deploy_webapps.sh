#!/usr/bin/env bash

# deploy war into webapps directory to jetty
rm /usr/share/jetty9/webapps/maribel.war
ln -s /vagrant/maribel.war /usr/share/jetty9/webapps/maribel.war