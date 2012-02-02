class foobar::config {
  file { $foobar::config_path:
    content => template("${module_name}/foobar.conf"),
  }
}
