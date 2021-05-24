# Terraform-Ansible-task

# Code to Deploy moodle app in remote instance
## files to create infra install moodle
<p>ansi_res.tf   -- this will push ansible.sh file in remote instance and execute it. </p>
<p>ansible.sh    -- install apache2 and ansible </p>
<p>instance.tf   -- create 2 instance in public and private subnet </p>
<p>keys.tf       -- create key </p>
<p>moodle.conf   -- configure moodle application </p>
<p>moodle.sh     -- assign permissions and run playbook </p>
<p>moodle.tf     -- this will push moodle.sh, moodle.conf, moodle.yaml in remote host and execute moodle.sh </p>
<p>moodle.yaml   -- ansible playbook to get moodle </p>
<p>nat.tf        -- set NAT gateway </p>
<p>secgrp.tf     -- security group for instance </p>
<p>vars.tf       -- varibles for public key and AMI ids </p>
<p>vpc.tf        -- terraform file to create vpc, subnet, internet gateway, route table </p>

## playbook
1.moodle.yaml
