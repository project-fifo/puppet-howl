class howl::config {
  $base = "/opt/local/fifo-howl"
  $file = "howl.conf"
  $conf = "/data/howl/etc/${file}"

  $ip        = $facts['ipaddress']
  $port      = 4242
  $ring_size = 64
  $ddb       = '192.168.1.44'

  include fifo_test::config
  
  file { $conf:
    require => [ File["${base}/etc"], Exec["make_rel_howl"] ],
    source => "${base}/etc/${file}.example",
    ensure  => present,
  }

  augeas { $file:
    require => [ File[$conf], Package['ruby-augeas'] ],
    load_path => "/data/code/howl/_build/default/lib/fifo_utils/priv/lenses",
    context   => "/files${conf}",
    changes   =>
    [
     "set ring_size ${ring_size}",
     "set ip ${ip}:${port}",
     "set listening_ip ${ip}",
     "set nodename howl@${ip}",
     "set audit on"
     "set ddb_connection.backend_host ${ddb}"
     ]
  }
  }
