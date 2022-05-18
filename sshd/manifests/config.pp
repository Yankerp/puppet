class sshd::config{
    file{'/etc/ssh/sshd_config':
        ensure => file,
        source => 'puppet:///modules/sshd/sshd_config',
    }
}