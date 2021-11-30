#!/bin/bash

echo "Actualizando UBUNTU"
sudo apt update


echo "Iniciando POSTGRESS"
sudo service postgresql start
sudo netstat -nlp | grep 5432

echo "Levantando ODOO"
sudo ./odoo-bin -c odoo.conf -d datatest -i base




exit


