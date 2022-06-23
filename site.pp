$puppetmaster = 'server.cn'
node 'slave.cn'{
  include centos,filescript,nginx,mysql,php,crontab,rsync,sshd,weiqin
}
