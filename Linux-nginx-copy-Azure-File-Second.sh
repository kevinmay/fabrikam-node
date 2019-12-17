#!/bin/bash
# bash Linux-nginx-copy-Azure-File-Second.sh

mount -t cifs //vmss20191204.file.core.windows.net/linux /mnt/azurefiles -o vers=3.0,username=vmss20191204,password=XOo4LHiA0DpIrMesytF4D6m0I445crVC2acHEtg4OxQkW1j4q9CZkUYTnNWlh04iMJUCbMjan7t5kELDAMptSw==,dir_mode=0755,file_mode=0664

cp /mnt/azurefiles/html/* /var/www/html                                                                    

exch "hello from $HOSTNAME $(date)" > /mnt/azurefiles/$HOSTNAME-$(date +"%Y%m%d")-$(date +"%H%M%S").txt


