# MySQL - Version 5.7 Installation

The file `install-mysql5.7` in this directory contains a script that is used to install mysql version 5.7.

**Usage:**

You will need to clone this repo on your locall terminall using the cammand:
```
git clone https://github.com/the-1Riddle/packageInstallationHub.git
```

then move to the `mysql-5.7_installation` directory:
```
cd packageInstallationHub/alx-tools_installation/mysql-5.7_installation
```

you will need to run the file as the root, to do that use the command:
```
sudo su
```

Then you can run the file as follows:
```
./install-mysql5.7.sh
```

During the package configuration process you will be prompted to enter a root passworkd, you can continue by clicking the ok button or opt to create a password instead which you will have to confirm the password you have created for the root.

![image](https://github.com/the-1Riddle/packageInstallationHub/assets/154701770/b3e8b66c-8aef-4f5e-aae0-19802cc7d045)

***On successful installation, you will be able to see an output similar to this:***

![image](https://github.com/the-1Riddle/packageInstallationHub/assets/154701770/72e16891-b6b7-4801-90d7-aedb69ab90c7)

> [!NOTE]<br>
> If you encounter any issues at the key section, it could be your firewall blocking traffic from the web.
> Then do `sudo apt-get -y update`, if it is slow and it ends up not working at all, then kindly disable your firewall.
> Then try running the script again 💜❤️

> [!WARNING]<br>
> This script has been tested on different web servers and proven to be working 100% so dont disable your firewall before running unsuccessful installation.

**Good Luck, 
**
