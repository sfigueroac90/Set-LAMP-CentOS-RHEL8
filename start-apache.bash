dnf update
dnf install httpd httpd-tools

#start apache
systemctl start httpd

#Enable autostart
systemctl enable httpd

#view status
systemctl status httpd

httpd -v

#echo "Welcome to this site!" > /var/www/html/index.html

#firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --permanent --zone=public --add-service=https

#systemctl reload firewalld

sudo chown apache:apache /var/www/html -R

#By default, Apache uses the system hostname as its global ServerName. If the system hostname can’t be resolved in DNS, then you will probably see the following error after running sudo apachectl configtest command.

sudo echo "ServerName localhost">/etc/httpd/conf.d/servername.conf


sudo systemctl reload httpd









##Install apache php
#sudo yum check-update
#sudo yum -y install httpd php
#
##Start apache
#sudo service httpd start
#
##Set apache server to start automatically
#sudo chkconfig httpd on
#
##Install mysql
#sudo yum -y install httpd mariadb-server php php-mysql
#sudo systemctl start mariadb
#sudo systemctl enable mariadb
#sudo yum -y install phpMyAdmin
##Pendiente de configurar
##sudo mysql_secure_installation
#
#
##myphpAdmin shall be config to allow external access different from local host
##Restart apahp
##sudo systemctl restart httpd
##Install wp-cli https://www.linode.com/docs/websites/cms/wp-cli/how-to-install-wordpress-using-wp-cli-on-centos-7/
#curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#chmod +x wp-cli.phar
#sudo mv wp-cli.phar /usr/local/bin/wp
#
##Allow bash completion
#sudo yum install -y wget
#cd ~
#wget https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
#sudo echo source /home/$USER/wp-completion.bash >> ~/.bashrc
#sudo source ~/.bashrc
#sudo echo autoload bashcompinit >> ~/.zshrc
#sudo echo bashcompinit >> ~/.zshrc
#sudo echo source /home/$USER/wp-completion.bash >> ~/.zshrc
#source ~/.zshrc
#
#
#
#
##install git
#sudo yum install -y git
#
##install nano
#sudo yum -y install nano
#
##Ejecute una vez conecte al centos
##sudo mysql_secure_installation
#
#
#
#sudo systemctl restart httpd
