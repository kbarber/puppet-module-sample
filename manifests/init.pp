class foobar (
  $param1 = $foobar::params::param1,
  $param2 = $foobar::params::param2
) inherits foobar::params {

  anchor { "foobar::start":   }~>
  class  { "foobar::packages": }~>
  class  { "foobar::config":    }~>
  class  { "foobar::services": }->
  anchor { "foobar::end":     }

}
