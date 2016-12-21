class howl::data {
  $user = 'howl'
  $group = $user
  group { $group:
    ensure  => present
  }

  user { $group:
        ensure  => present,
        gid     => $group,
        require => Group[$group],
        uid     => 2000,
        home    => "/data/${username}",
        shell   => "/bin/false",
        managehome  => true,
    }

  directory { '/data':
    ensure  => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644'
  }
  directory { "/data/${user}":
    ensure  => present,
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  directory { "/data/${user}/db":
    ensure  => present,
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  directory { "/data/${user}/etc":
    ensure  => present,
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  directory { "/data/${user}/log":
    ensure  => present,
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }
  }
