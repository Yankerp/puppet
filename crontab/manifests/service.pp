class crontab::service{
  service{'crond':
    name => 'crond',
    ensure => running,
    require => Class['crontab::config']
  }
}
