class howl::data {

  directory { '/data/howl':
    owner  => 'howl',
    group  => 'howl',
    mode    => '0644'
  }
  directory { '/data/howl/etc':
    owner  => 'howl',
    group  => 'howl',
    mode    => '0644'
  }
  directory { '/data/howl/log':
    owner  => 'howl',
    group  => 'howl',
    mode    => '0644'
  }
  }
