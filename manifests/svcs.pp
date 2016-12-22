class howl::svcs {
  $svc = 'howl'
  service { 'svc:/pkgsrc/epmd:default':
    require  => [ Package[ 'erlang' ] ],
    enable   => true,
    ensure   => running,
  }
  service { "svc:/network/${svc}:default":
    require => [
                File[ "/opt/local/fifo-${svc}/share/${svc}.xml" ],
                Augeas[ "howl.conf" ],
                ],
    manifest => "/opt/local/fifo-${svc}/share/${svc}.xml",
    enable   => true,
    ensure   => running,
  }
}
