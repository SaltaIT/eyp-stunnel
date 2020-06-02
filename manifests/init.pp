class stunnel(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits stunnel::params{

  class { '::stunnel::install': }
  -> class { '::stunnel::config': }
  ~> class { '::stunnel::service': }
  -> Class['::stunnel']

}
