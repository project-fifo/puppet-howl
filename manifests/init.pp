class howl {
  notify { 'Welcome to howl!': }
  class { howl::clone: }
  class { howl::compile: }
  class { howl::link: }
  }
