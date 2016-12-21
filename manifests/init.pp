class howl {
  notify { 'Welcome to howl!': }
  class { howl::data: }
  class { howl::clone: }
  class { howl::compile: }
  }
