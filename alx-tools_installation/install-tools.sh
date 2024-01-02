#!/usr/bin/env bash

# get the updates.
sudo apt-get -y update

# clone betty repo
git clone https://github.com/alx-tools/Betty.git

# move to betty directory
cd Betty || exit

# install betty linter
sudo ./install.sh

# writing the following contents to a file named "betty"
cat <<EOF > betty
#!/bin/bash
# Simply a wrapper script to keep you from having to use betty-style
# and betty-doc separately on every item.
# Originally by Tim Britton (@wintermanc3r), multiargument added by
# Larry Madeo (@hillmonkey)

BIN_PATH="/usr/local/bin"
BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"

if [ "\$#" = "0" ]; then
    echo "No arguments passed."
    exit 1
fi

for argument in "\$@" ; do
    echo -e "\\n========== \$argument =========="
    \${BIN_PATH}/\${BETTY_STYLE} "\$argument"
    \${BIN_PATH}/\${BETTY_DOC} "\$argument"
done
EOF

# changing the file named "betty" to executable
chmod a+x betty

# moving "betty" file into the /usr/local/bin/ directory
sudo mv betty /usr/local/bin/

# install pycodestyle
sudo apt install -y python3-pip
pip install -y pycodestyle

# installing C and C# compilers
sudo apt-get install -y gcc
sudo apt install -y mono-complete

# Install MySQL 8.0
sudo apt-get install -y mysql-server
mysql --version

#                            Start MySQL service
sudo service mysql start

#                       waiting to connect to the server
sleep 10

# Connect to MySQL and execute commands
sudo mysql <<EOF
quit
EOF

# installing and activating env
sudo apt-get install -y python3.8-venv
python3 -m venv venv 
source venv/bin/activate

# installing mysqldb
sudo apt-get install -y python3-dev libmysqlclient-dev zlib1g-dev

#                         Install Python package
sudo pip3 install mysqlclient

#                            Run Python script
python3 - <<EOF
import MySQLdb
print("MySQLdb version:", MySQLdb.version_info)
EOF

# Install SQLAlchemy module version 
sudo pip3 install SQLAlchemy

#                     Check the installed version using Python
python3 - <<EOF
import sqlalchemy
print("SQLAlchemy version:", sqlalchemy.__version__)
EOF

# installing puppet
sudo apt-get install -y ruby=1:2.7+1 --allow-downgrades
sudo apt-get install -y ruby-augeas
sudo apt-get install -y ruby-shadow
sudo apt-get install -y puppet

# installing puppet-lint
sudo gem install puppet-lint

# Install Node 14
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# installing semi-standard
sudo npm install -y semistandard --global

# installing make
sudo apt-get install -y make

# on successful instalation printf

echo "Installation was successfull. great work Elvis"



