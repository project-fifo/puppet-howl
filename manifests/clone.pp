class howl::clone {
  $repo = 'howl'
  $owner = 'root'
  file { '/data' :
    ensure  => directory,
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  file { '/data/code' :
    ensure  => directory,
    group   => root,
    owner   => root,
    mode    => '0644',
  }

  package { 'git':
    ensure => installed,
  }

  vcsrepo { "/data/code/${repo}":
    ensure   => latest,
    owner    => $owner,
    group    => $owner,
    provider => git,
    require  => [ Package["git"] ],
    source   => "http://github.com/project-fifo/${repo}.git",
    revision => 'test',
  }
  }
