class httpd::service{
    service{'starthttpd':
        name => 'httpd',
        ensure => running,
        start => '/usr/bin/systemctl start httpd',
        restart => '/usr/bin/systemctl restart httpd',
        require => Class['httpd::install'],
    }
}
