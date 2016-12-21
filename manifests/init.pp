class howl {
  notify { 'Welcome to howl!': }

  class { howl::deps:    }
  class { howl::clone:   }
  class { howl::compile: }
  class { howl::link:    }
  class { howl::config:  }
  }
