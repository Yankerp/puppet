class centos::config{
    file{'/etc/sysctl.conf':
        ensure => file,
        source => 'puppet:///modules/centos/sysctl.conf'
    }

    file{'/etc/selinux/config':
        ensure => file,
        source => 'puppet:///modules/centos/config_selinux'
    }

    exec{'sourcefile':
        name => '/etc/resolv.conf',
        path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
        command => 'sysctl -p',
        require => File['/etc/sysctl.conf']
    }
}
