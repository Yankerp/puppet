class nginx::config{
	file {
    '/etc/nginx/nginx.conf':
		ensure => file,
		source => 'puppet:///modules/nginx/conf/nginx.conf',
		require => Class['nginx::install']
	}

	file {
    '/usr/share/nginx/html/index.php':
		ensure => file,
		source => 'puppet:///modules/nginx/conf/index.php',
		require => Class['nginx::install']
	}
}
