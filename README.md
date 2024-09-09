# Automate Deploy on AWS

Lab to understand how to deploy infraestucture on AWS using Terraform and Ansible, and CI / CD .

Tools for the moment:

Terraform how to install : https://developer.hashicorp.com/terraform/install?product_intent=terraform#windows .

Ansible how to install : https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html .

For example I use Windows, so I follow this steps to install "Cygwin" https://phoenixnap.com/kb/install-ansible-on-windows .


Account GITHUB

This repository will be constantly on change and add new functionality, until now there are files for terraform and ansible. 

This a tree how to have to be there the files

/my-infra-automation

├── .github

│   └── workflows

│       └── deploy.yml

├── terraform

│   ├── main.tf

│   ├── variables.tf

│   └── outputs.tf

├── ansible

│   └── playbook.yml

├── docker

│   ├── Dockerfile

│   └── microservice

└── scripts
    
