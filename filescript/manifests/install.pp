class centos::install{
  package{'net-tools':
    ensure => installed
  }

  package{'wget':
    ensure => installed
  }
}
