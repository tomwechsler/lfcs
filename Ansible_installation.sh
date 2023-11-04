sudo apt-cache search ansible -f | less

sudo apt-add-repository --yes --update ppa:ansible/ansible

sudo apt update

sudo apt install ansible 

file $(which ansible) 

ansible --version

Although Ansible is part of the standard repositories, it is an early version, to install a later
version of Ansible we can add in the Ansible repository to Ubuntu 20.04.