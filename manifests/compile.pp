class howl::compile {
  exec { 'make_release':
    command => 'make release',
    path    => ['/opt/local/bin/', '/bin/'],
    # path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
  }
  }
