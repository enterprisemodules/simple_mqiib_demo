# TODO: Add documentation
class profile::installiib(
  String $source_location,
  String $version,
){
  iib_install::installiib {$version:
    source_location => $source_location,
    version         => $version,
  }

  -> iib_instance { $version:
    ensure         => 'present',
    os_user        => 'iibadmin',
    home_directory => "/opt/IBM/iib-${version}",
  }

}
