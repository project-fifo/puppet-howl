class howl {
  $ip = $facts['ipaddress']
  notify { "Welcome to howl@${ip}": }

  class { howl::deps:    }
  class { howl::clone:   }
  class { howl::compile: }
  class { howl::link:    }
  class { howl::config:  }
  }
