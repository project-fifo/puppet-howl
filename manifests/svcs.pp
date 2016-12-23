class howl::svcs {
  fifo_test::svcs{'howl':
    svc     => 'howl',
    require => [
                Exec[ 'user_privs_howl' ],
                ]
  }
}
