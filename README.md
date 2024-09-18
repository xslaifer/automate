## Automate Deploy on AWS ##

Lab to understand how to deploy infraestucture on AWS using Terraform, Ansible, and CI / CD with Github Actions.

Tools for the moment:

Terraform how to install : https://developer.hashicorp.com/terraform/install?product_intent=terraform#windows .

Ansible how to install : https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html .

For example I use Windows, so I follow this steps to install "Cygwin" for ansible https://phoenixnap.com/kb/install-ansible-on-windows .

Account GITHUB

This repository will be constantly on change and add new functionality, until now there are files for terraform, ansible and workflows for github actions. 

This a tree how to have to be there the files

/my-infra-automation

├── .github

│   └── workflows

│       └── deploy.yml

│       └── destroy.yml

├── ansible

│   └── playbook.yml

├── terraform

│   ├── main.tf

│   ├── variables.tf

│   └── outputs.tf
