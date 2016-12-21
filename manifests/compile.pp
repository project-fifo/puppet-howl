class howl::compile {

  exec { 'make_rel':
    require => [ File['/data/code/howl'] ],
    command => 'make rel',
    cwd     => '/data/code/howl',
    path    => ['/opt/local/bin/', '/bin/'],
    environment => ['HOME=/data/code'],
    # path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
  }
  }
