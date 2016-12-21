class howl::compile {
  exec { 'make_release':
    command => 'make release',
    cwd     => '/data/code/howl',
    path    => ['/opt/local/bin/', '/bin/'],
    # path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
  }
  }
