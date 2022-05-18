class php::service(
) {
	service { 'php-fpm':
		enable => true,
		ensure => running,
		restart => '/bin/systemctl start php-fpm',
		hasstatus	=> 'false',
    require => Class['php::install']
	}
}
