Ansible
===
This role install Ansible into a remote machine. The purpuse is to use an external server as a control machine, meaning a linux server will execute ansible playbooks on the available hosts.

#Ansible Installation
This role uses latest development version of ansible from github, if you would like to install a different version, you can change the following variables.

	---
	ansible_install_git_repository      : "https://github.com/ansible/ansible.git"
	ansible_install_git_version         : "HEAD"
	ansible_install_src_dir             : "/opt/ansible"
	# if you want to force pip to do overwrite/upgrade use 'latest' 
	ansible_install_state               : "present"


