#!/bin/bash
# bash Linux-nginx-copy-Azure-File-First.sh

sudo timedatectl set-timezone Asia/Taipei

sudo apt update

sudo apt install nginx

sudo apt install cifs-utils

sudo mkdir -p /mnt/azurefiles

sudo mount -t cifs //vmss20191204.file.core.windows.net/linux /mnt/azurefiles -o vers=3.0,username=vmss20191204,password=XOo4LHiA0DpIrMesytF4D6m0I445crVC2acHEtg4OxQkW1j4q9CZkUYTnNWlh04iMJUCbMjan7t5kELDAMptSw==,dir_mode=0755,file_mode=0664

sudo cp /mnt/azurefiles/html/* /var/www/html                                                                    

echo "hello from $HOSTNAME $(date)" | sudo tee /mnt/azurefiles/$HOSTNAME-$(date +"%Y%m%d")-$(date +"%H%M%S").txt


