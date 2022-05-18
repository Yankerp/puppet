class php::install{
	exec{'yum_rpm':
		path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
    command => 'yum install -y /root/rpm/*',
		require => Class['php::config'],
		creates => '/usr/bin/php'
	}

	exec{'yum_config':
    path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
    command => 'yum makecache && yum install -y yum-utils',
		require => Exec['yum_rpm'],
		creates => '/usr/bin/php'
		
  }

	exec{'php_vesion':
		path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
		command => 'yum-config-manager --enable remi-php74',
		require => Exec['yum_config'],
		creates => '/usr/bin/php'
	}

	exec{'assembly':
		path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
		command => 'yum -y install php php-cli php-common php-gd php-json php-ldap php-mbstring php-mysqlnd php-pdo php-xml php-devel php-embedded php-mcrytp php-pecl-mongodb php-pecl-redis php-pecl-memcached php-opcache php-fpm',
		require => Exec['php_vesion'],
		creates => '/usr/bin/php'
	}
}
