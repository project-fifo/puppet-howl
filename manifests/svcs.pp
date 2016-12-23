class howl::svcs {
  class { fifo_test::svcs:
    svc     => 'howl',
    require => [
                Exec[ 'user_privs_rel' ],
                ]
  }
}
