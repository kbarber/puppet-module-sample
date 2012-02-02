class foobar::services {
  service { $foobar::services:
    ensure => running,
    enable => true,
  }
}
