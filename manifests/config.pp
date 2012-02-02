class foobar::config {
  file { "/etc/foobar/foobar.conf":
    content => template("${module_name}/foobar.conf"),
  }
}
