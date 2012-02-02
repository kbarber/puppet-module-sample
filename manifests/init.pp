class foobar (

  $packages    = $foobar::params::packages,
  $services    = $foobar::params::services,
  $config_path = $foobar::params::config_path,
  $config_dir  = $foobar::params::config_dir

) inherits foobar::params {

  anchor { "foobar::start":   }~>
  class  { "foobar::packages": }~>
  class  { "foobar::config":    }~>
  class  { "foobar::services": }->
  anchor { "foobar::end":     }

}
