define vhost(
  $port
) {

  file { "${foobar::config_dir}/${name}":
    content => template("${module_name}/vhost.template"),
    notify => Class["foobar::services"],
  }

}
