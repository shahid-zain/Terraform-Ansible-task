# Terraform-Ansible-task

# Code to Deploy moodle app in remote instance
## files to create infra install moodle
1.ansi_res.tf   -- this will push ansible.sh file in remote instance and execute it.
2.ansible.sh    -- install apache2 and ansible
3.instance.tf   -- create 2 instance in public and private subnet
4.keys.tf       -- create key
5.moodle.conf   -- configure moodle application
6.moodle.sh     -- assign permissions and run playbook
7.moodle.tf     -- this will push moodle.sh, moodle.conf, moodle.yaml in remote host and execute moodle.sh.
8.moodle.yaml   -- ansible playbook to get moodle
9.nat.tf        -- set NAT gateway
10.secgrp.tf    -- security group for instance
11.vars.tf      -- varibles for public key and AMI ids
12.vpc.tf       -- terraform file to create vpc, subnet, internet gateway, route table

## playbook
1.moodle.yaml
