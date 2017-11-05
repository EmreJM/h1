

class sshnova {

		package { ‘ssh’:

		ensure => ‘installed’,
		
		allowcdrom => true,

	}

		file { ‘/etc/ssh/sshd_config’:
		content => template(‘sshnova/sshd_config’),
		notify => Service[‘ssh’],
	}
		service { ‘ssh’:
		ensure => ‘running’,
		enable => true,
		provider => ‘systemd’,
	}

}
