#!/bin/bash
#Author:Anandu
#contact:anandupremasan408@gmail.com
###############Installation PHP (8.1, 7.4 & 5.6) ################################

echo "############################################..Proceeding initial update..#####################################"
sleep 2
sudo apt update && sudo apt upgrade -y

echo "###############################################...Installing dependencies...################################"
sleep 1
sudo apt install software-properties-common ca-certificates lsb-release apt-transport-https -y

echo "################################################..Adding repository..###################################"
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y

echo "############################################..Updating repo..######################################################"
sleep 1
sudo apt update -y
echo -e "Select the version to be installed\n1.php 7.4\n2.php 7.2\n3.php 5.6\n4.php 8.1"
read php_ver

case $php_ver in
        "1")
                echo "############################Installing php 7.4#############################"
                echo `sudo apt install php7.4 -y `
                ;;
        "2")    echo "##########################Installing php 7.2##########################"

                echo `sudo apt install php7.2 -y`
                ;;


        "3") echo "########################Installing php 5.6#######################"
             echo `sudo apt install php5.6 -y`
             ;;

        "4") echo "#########################.Installing php 8.1#########################"

             echo `sudo apt install php8.1 -y`
             ;;
esac
