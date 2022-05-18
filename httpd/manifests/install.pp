class httpd::install{
	package{'httpd':
		name => 'httpd',
		ensure => installed,
	}
}
