class crontab::config{
    cron{'php1':
        ensure => present,
        command => '/usr/local/php/bin/php /home/ms/ops/gm_tool/application/daemon/allPayDailyDaemon.php > /tmp/allPayDailyDaemon.log',
        minute => '*/20',
        user => 'root'
    }

    cron{'php2':
        ensure => present,
        command => '/usr/local/php/bin/php /home/ms/ops/gm_tool/application/daemon/announcementDaemon.php > /tmp/announcementDaemon.log',
        minute => '*/20',
        user => 'root'
    }

    cron{'check_sever1':
        ensure => present,
        command => '/usr/local/python36/bin/python3 /home/tools/check_server_status.py > /tmp/check_server.log',
        minute => '*/20',
        user => 'root'
    }

    cron{'check_server2':
        ensure => present,
        command => 'bash  /home/tools/ver/version_md5.sh >/tmp/check_version.log',
        minute => '*/10',
        user => 'root'
    }

    cron{'check_coins':
        ensure => present,
        command => '/usr/local/python36/bin/python3 /home/tools/ver/check_coins_status.py > /tmp/check_coins.log',
        minute => '*/10',
        user => 'root'
    }

    cron{'gm1_status':
        ensure => present,
        command => 'bash /home/ms/ops/gm_new/cmd/cron.sh >> /home/ms/ops/gm_new/Runtime/Logs/crontab.log',
        minute => '*/10',
        user => 'root'
    }

    cron{'gm2_status':
        ensure => present,
        command => 'bash /home/ms/ops/gm_new/cmd/cron_ms_123.sh  >> /home/ms/ops/gm_new/Runtime/Logs/crontab.log',
        minute => '*/10',
        user => 'root'
    }

    cron{'update_server':
        ensure => present,
        command => 'flock -xn /tmp/.ms_restart.lock -c "/usr/local/python36/bin/python3  /home/tools/ver/auto_update_ms_plat.py >/root/ms.log',
        minute => '*/10',
        user => 'root'
    }
}


