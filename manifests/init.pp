class howl {
  notify { 'Welcome to howl!': }

  package { 'coreutils':
    ensure => installed,
  }

  package { 'sudo':
    ensure => installed,
  }

  package { 'grep':
    ensure => installed,
  }

  class { howl::clone: }
  class { howl::compile: }
  class { howl::link: }
  }
