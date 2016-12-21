class howl::config {
  $base = "/opt/local/fifo-howl"
  $file = "howl.conf"
  $conf = "/data/howl/etc/${file}"
  $lenses = exec{ "ls -d -1 ${base}/lib/fifo_utils* | tail -1":
    require => [ File["${base}/lib" ] ]
  }
  
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
    load_path => $lenses,
    context   => "/files${conf}",
    changes   =>
    [
     "set ring_size 32",
     ]
  }
  }
