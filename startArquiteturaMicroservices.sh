#!/bin/bash

apt -y update
apt install -y openjdk-8-jdk openjdk-8-jre
apt -y install ufw
apt -y install postgresql

service postgresql start 

sh configure-firewall.sh
sleep 5
echo "createdb portal" | su - postgres
echo "createdb cadastros" | su - postgres
echo "createdb vendas" | su - postgres
echo "createdb relatorios" | su - postgres

#echo '\x \\ GRANT ALL ON portal TO postgres;' | su - postgres
#echo '\x \\ GRANT ALL ON cadastros TO postgres;' | su - postgres
#echo '\x \\ GRANT ALL ON vendas TO postgres;' | su - postgres
#echo '\x \\ GRANT ALL ON relatorios TO postgres;' | su - postgres


sleep 5

echo "local all postgres peer" >> /etc/postgresql/10/main/pg_hba.conf

service postgresql restart 

sleep 10
sh /CloudOpss/wildfly-8.2.1.Final/bin/start.sh

