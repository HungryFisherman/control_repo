class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtz+U51U40XDDGeQFp/ezNg5iUF0EtIqDcS+W1jVavc2cErh/VC2dtsSMzXR+gNAVbAD443wzpgWH6FG53Z6rSesCogKyLAyiThfygsYGMypQgQpoR3hcQHeEdxba8ag5PD/kJFg02tNXfR6/T/FJWWhzW0tnUc9vIHopBEQNs4S/6ikkLF83ec0D8SruX7X2A5G71B3CSUFRx/YuxG9H3Q9Wk2Fl6ZhaHxz6Kd1h4jhzqB2T3vhUgxh+eUBkqrxqIC51VkD3wyGUx1IbzZYcxqsqYseijnOo7ixNJoeWWnfAJsmK6Tf7l0CZa4dqQQog9+lSb0ZcwFNcUd7e2PbO7',
	}  
}
