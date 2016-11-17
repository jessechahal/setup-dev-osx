
#!/bin/bash
#---------------
# install script for an osx dev machine, see README.md
#---------------

sudo easy_install pip
sudo pip install ansible paramiko PyYAML Jinja2 httplib2 docker-py

cd playbook

# run the playbook on localhost
sudo ansible-playbook -i localhost osx.yml --connection=local --ask-sudo-pass
