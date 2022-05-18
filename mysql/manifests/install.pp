# MySQL_Install5.7_Runningisok
class mysql::install{
  exec{'mysql-server':
    path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
    command => 'yum makecache && yum install -y mysql-server',
    require => Exec['rpmmysql'],
    creates => '/usr/bin/mysql'
  }

  exec{'rpmkey':
    path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
    command => "rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022",
    creates => '/usr/bin/mysql'
  }

  exec{'rpmmysql':
    path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
    command => "sudo rpm -Uvh http://repo.mysql.com/yum/mysql-5.7-community/el/7/x86_64/mysql57-community-release-el7-10.noarch.rpm && yum makecache",
    require => Exec['rpmkey'],
    creates => '/usr/bin/mysql'
  }
}
