#!/bin/bash
echo "Installing docker environment"
dpkg -i *.deb
systemctl start docker
systemctl enable docker
echo "Installed docker environment"
dpkg -s uuid-runtime > /dev/null 2>&1
if [ $? -ne 0 ];then
    dpkg -i uuid*.deb
fi

#cd compose
#echo "Installing docker-compose component"
#docker load -i docker-compose.tar
#cp docker-compose /usr/bin/
#echo "Installed docker-compose component"
#cd ..
systemctl restart docker
echo "Installed completely"
