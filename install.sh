#! /bin/bash
USER=vagrant

sudo apt-get update -y

echo "Installing ansible"
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install -y ansible
ansible --version

echo "Running ansible playbook"
ansible-playbook  /home/${USER}/configuration/playbook.yml 

# ansible-playbook  /home/${USER}/configuration/playbook.yml  --extra-var="install_docker=True"