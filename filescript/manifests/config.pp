class filescript::config{
    file{["/data",
          "/data/game/",
          "/data/game/ms/",
          "/data/game/ms/install",
          "/data/backup/",
          "/data/backup/patch",
          "/data/backup/patch/patch",
          "/home/ms",
          "/home/ms/ops/",
          "/home/ms/ops/package/",
          "/home/ms/ops/package/patch",
          "/home/ms/ops/package/install",
        ]:
        ensure => directory,
    }
}
