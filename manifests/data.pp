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

  file { '/data':
    ensure  => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0644'
  }
  file { "/data/${user}":
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  file { "/data/${user}/db":
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  file { "/data/${user}/etc":
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }

  file { "/data/${user}/log":
    ensure  => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0644'
  }
  }
