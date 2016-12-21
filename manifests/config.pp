class howl::config {
  $base = "/opt/local/fifo-howl"
  $file = "howl.conf"
  $conf = "/data/howl/etc/${file}"
  
  package { 'augeas':
    ensure => installed,
  }


  package { 'ruby-augeas':
    require => [ Package['augeas'], Package['pkg-config'] ],
    ensure   => 'installed',
    provider => 'gem',
  }

  file { $conf:
    require => [ File["${base}/etc"], Exec['make_rel'] ],
    source => "${base}/etc/${file}.example",
    ensure  => present,
  }

  augeas { $file:
    require => [ File[$conf] ],
    load_path => "/data/code/howl/_build/default/lib/fifo_utils/priv/lenses",
    context   => "/files${conf}",
    changes   =>
    [
     "set ring_size 32",
     ]
  }
  }
