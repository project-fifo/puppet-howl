class howl::link {
  $src = '/data/code/howl/_build/prod/rel/howl'
  $dest = '/opt/local/fifo-howl'

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

}
