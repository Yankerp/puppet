class nginx::install{
  file {'ngx_file':
    name => '/root/nginxrpm',
    ensure => 'directory',
		source => 'puppet:///modules/nginx/rpm',
		recurse => true,
	}

  package{'nginx':
    name => 'nginx',
    ensure => installed,
    require => Exec['runningnginx']
  }

# 后续根据需求安装特定nginx版本以及配置文件或部署php环境等...
  exec{'runningnginx':
    path => '/usr/bin/env:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin:/root/',
    command => 'rpm -ivh /root/nginxrpm/nginx-release-centos-7-0.el7.ngx.noarch.rpm',
    require => File['ngx_file']
  }

  package{'git':
    ensure => installed
  }
}
