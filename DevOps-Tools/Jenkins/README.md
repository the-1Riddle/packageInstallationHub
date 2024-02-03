# Jenkins Installation

The bash script in `install-jenkins` files automates the installation of the Jenkins (LTS) version on a Debian-based Linux system that includes Ubuntu and more.<br>
The script will first request for updates, then install Java which is a prerequisite for Jenkins after that it:
- Installs Jenkins
- Starts the service
- Displays the initial admin password.

# How to use the Installation script

1. Open your terminal by pressing the `ctrl + alt + t` command on your keyboard.
2. You can then clone this repo using the command:
   
   ```
   git clone https://github.com/the-1Riddle/packageInstallationHub.git
   ```
3. Move to the directory where the script is, you can use this command:
   
   ```
   cd packageInstallationHub/DevOps-Tools/Jenkins
   ```
4. Execute the file to install the package.

   ```
   sudo ./install-jenkins.sh
   ```

Lastly, when the execution is done, the initial admin password will be displayed in the terminal.<br>
Go to `http://<your_server_ip>:8080` to complete the initial setup using the displayed admin password. 
Then you can configure Jenkins according to your requirements after the initial setup.


> **Option**\
> Feel free to delete the cloned directory when you are done with the installation

**Good Luck**
