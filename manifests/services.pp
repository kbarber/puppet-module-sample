class foobar::services {
  service { "foobar":
    ensure => running,
    enable => true,
  }
}
