class mysql::service{
    service{'mysqld':
            name => 'mysqld',
            ensure => running,
            require => Class['mysql::install']
    }
    
}
