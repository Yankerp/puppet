class sshd::service{
        service{'startsshd':
                name => 'sshd',
                ensure => running,
                start => '/usr/bin/systemctl restart sshd',
                require => Class['sshd::config']
        }
}
