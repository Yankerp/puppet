class rsync::install{
  package{'rsync':
    name => 'rsync',
    ensure => installed
  }
}
