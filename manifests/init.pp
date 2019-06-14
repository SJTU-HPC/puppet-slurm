# == Class: slurm
#
# This manages both the slurmd and slurmctld services
# Slurm is smart enough to know which to start on a host.
#
# Full description of class slurm is in the README.
#
# @param package_name
#
class slurm (
  $config_directory   = '/etc/slurm',
  $config_ensure      = 'present',
  $config_options     = hash([]),
  $config_nodes       = [],
  $config_partitions  = [],
  $cgroup_options     = hash([]),
  $dbd_config_options = hash([]),
  $package_name       = $::slurm::params::package_name,
  $package_ensure     = 'installed',
  $service_name       = 'slurm',
  $service_ensure     = 'running',
  $service_enable     = true,
  $service_account    = 'slurm',
  $gres               = '',
) inherits ::slurm::params {
  anchor { 'slurm::begin': } ->
  class  { 'slurm::package': } ->
  class  { 'slurm::config': } ~>
  class  { 'slurm::service': } ->
  anchor { 'slurm::end': }
}
