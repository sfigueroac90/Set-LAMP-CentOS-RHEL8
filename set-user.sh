#Create user
read -p 'Username: ' Username
read -sp 'Paswoord: ' password


#export USER_NAME=worpdressadmin
sudo adduser $Username 
echo $password | sudo passwd -u $Username -f --stdin 
sudo gpasswd -a $Username wheel

#Copy Recursively the files from original user to new user

