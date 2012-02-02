define vhost(
  $port
) {

  file { "/etc/foobar.d/${name}":
    notify => Class["foobar::services"],
  }
}
