class howl::clone {
  $repo = 'howl'
  $owner = 'root'
  file { '/data/code' :
    ensure  => directory,
    group   => root,
    owner   => root,
    mode    => 0755,
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
    source   => "http://giturl.com/project-fifo/${repo}.git",
    revision => 'test',
  }
  }
