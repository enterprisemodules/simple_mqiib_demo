# TODO: Add documentation
class profile::base()
{
  contain "::profile::base::${::deployment_zone}"
  contain ::profile::base::config
  contain ::profile::base::hosts
  contain ::profile::base::packages
}
