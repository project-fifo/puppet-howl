class howl::link {
  $svc  = 'howl'
  $src  = "/data/code/${svc}/_build/prod/rel/${svc}"
  $dest = "/opt/local/fifo-${svc}"

  file { $dest :
    ensure  => directory,
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/etc" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    target   => "${src}/etc",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

    file { "${dest}/bin" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    target   => "${src}/bin",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/erts-7.1" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    target   => "${src}/erts-7.1",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/lib" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    target   => "${src}/lib",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/releases" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    target   => "${src}/releases",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

    file { "${dest}/share" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    target   => "${src}/share",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/snmp" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    target   => "${src}/snmp",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "/opt/local/sbin/${svc}":
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => present,
    source  => "/data/code/${svc}/rel/pkg/deploy/sbin/${svc}"
  }

  file { "/opt/local/sbin/${svc}-admin":
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => present,
    source  => "/data/code/${svc}/rel/pkg/deploy/sbin/${svc}-admin"
  }

}
