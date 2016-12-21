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


  file { "${dest}/bin" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    links   => "${src}/bin",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/erts-7.1" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    links   => "${src}/erts-7.1",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/lib" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    links   => "${src}/lib",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/releases" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    links   => "${src}/releases",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

    file { "${dest}/share" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    links   => "${src}/share",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "${dest}/snmp" :
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => link,
    links   => "${src}/lib",
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { "/opt/local/sbin/${svc}":
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => present,
    source  => "/data/code/${svc}/rel/pkg/deply/sbin/${svc}"
  }
  
  file { "/opt/local/sbin/${svc}-admin":
    require => [ File[$dest], Exec['make_rel'] ],
    ensure  => present,
    source  => "/data/code/${svc}/rel/pkg/deply/sbin/${svc}-admin"
  }

}
