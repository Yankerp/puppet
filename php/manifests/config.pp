class php::config{
	file {
    '/root/rpm':
    ensure => 'directory',
		source => 'puppet:///modules/php/rpm',
		recurse => true,
	}	
}
