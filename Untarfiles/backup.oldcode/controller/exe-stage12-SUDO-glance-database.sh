# OpenStack Queens installation script 
# on Ubuntu 16.04.4 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2018 
#
#
#!/bin/bash -x
pwd
echo "Run this script as a user."
printf "\nCreate glance database tables...\n"
#read varkey
mysql -u root -pvasabilabMYSQL_PASS -e "CREATE DATABASE glance;"
mysql -u root -pvasabilabMYSQL_PASS -e "GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'localhost' IDENTIFIED BY 'vasabilabGLANCE_DBPASS';"
mysql -u root -pvasabilabMYSQL_PASS -e "GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'%' IDENTIFIED BY 'vasabilabGLANCE_DBPASS';"
