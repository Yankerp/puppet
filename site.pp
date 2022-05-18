$puppetmaster = 'server.cn'
node 'slave.cn'{
  include php,filescript,nginx,centos,crontab,sshd,rsync,mysql
}
