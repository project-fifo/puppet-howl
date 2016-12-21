class howl::compile {

  package { 'erlang':
    ensure => installed,
  }

  package { 'gmake':
    ensure => installed,
  }

  package { 'zlib':
    ensure => installed,
  }

  package { 'bzip2':
    ensure => installed,
  }

  exec { 'make_rel':
    require => [ Vcsrepo['/data/code/howl'] ],
    command => 'make rel',
    cwd     => '/data/code/howl',
    path    => ['/opt/local/bin/', '/bin/'],
    environment => ['HOME=/data/code'],
    # path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
  }
  }
