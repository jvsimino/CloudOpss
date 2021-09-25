#!/bin/bash

apt -y update
apt install -y openjdk-8-jdk openjdk-8-jre
apt -y install ufw
apt -y install postgresql

service postgresql start 

sh configure-firewall.sh

#sh /CloudOpss/wildfly-8.2.1.Final/bin/start.sh
