# Foobar class
#
# == Parameters
#
# === General Tunables
# 
# [*param1*]
#   *Optional* this is the first parameter
#
# === Advanced Tunables
#
# These are generally automatically set, do not change unless you know what you
# doing.
#
# [*packages*]
#   *Optional* Packages to install
# [*services*]
#   *Optional* Services to start
# [*config_path*]
#   *Optional* Configuration file path
# [*config_dir*]
#   *Optional* Configuration directory for vhosts.
#
# == Examples
#
# TODO
#
class foobar (

  $param1      = $foobar::params::param1,

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
