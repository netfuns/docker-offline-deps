#!/bin/bash
echo "Installing docker environment"
rpm -ivh --nodeps --force *.rpm
systemctl start docker
systemctl enable docker
echo "Installed docker environment"
#rpm -qi libseccomp > /dev/null 2>&1
#if [[ $? -ne 0 ]];then
#    pushd libseccomp
#    rpm -Uvh --force *.rpm
#    popd
#fi
#cd compose
#echo "Installing docker-compose component"
#docker load -i docker-compose.tar
#cp docker-compose /usr/bin/
#echo "Installed docker-compose component"
#cd ..
echo "Installed completely"
