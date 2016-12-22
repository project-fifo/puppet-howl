class howl {
  notify { "Welcome to howl@${facts['networking']['ip']}": }

  class { howl::deps:    }
  class { howl::clone:   }
  class { howl::compile: }
  class { howl::link:    }
  class { howl::config:  }
  }
