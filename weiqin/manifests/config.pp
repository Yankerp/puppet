class weiqin::config{
    exec{"/data":
        path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
        command => 'mkdir /data/',
        creates => '/data/',
    }

    exec{"weiqinrun":
        path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
        command => 'cd /data/ && /usr/bin/unzip /data/pros.zip && chmod 777 /data/pros/ && chmod 777 /data/pros/*',
        require => File['pros']
    }

    file{"pros":
        name => '/data/pros.zip',
        ensure => file,
        source => 'puppet:///modules/weiqin/pros.zip',
        require => Exec['/data'],
    }
}
