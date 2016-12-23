class howl {
  class { howl::deps:    }
  class { howl::clone:   }
  class { howl::compile: }
  class { howl::link:    }
  class { howl::config:  }
  class { howl::svcs:  }

  exec { 'user_privs':
    require => [ User[$user] ],
    command => "/usr/sbin/usermod -K defaultpriv=basic,net_privaddr ${user}"
  }

  }
