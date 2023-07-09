# DevOps_Bash-Scripts
This GitHub repository contains a collection of Bash scripts tailored specifically for DevOps engineers, designed to streamline day-to-day activities and enhance operational efficiency. The scripts provided cover a wide range of tasks commonly encountered in the DevOps workflow, offering automated solutions and time-saving shortcuts.

# How to Create Aliases for the Bash Scripts
To create a global alias that is accessible to all users on the server, you can define the alias in the system-wide shell initialization file "/etc/bash.bashrc"
1. sudo vi /etc/bash.bashrc
2. Scroll to the end of the file and add the following line:
    alias <alias_name>='/path/to/your/script.sh'
    Replace /path/to/your/script.sh with the actual path to your script file.
    Save the file and exit the text editor.
3. To make the alias available immediately, either log out and log back in or run the following command to reload the shell initialization file:
    source /etc/bash.bashrc

