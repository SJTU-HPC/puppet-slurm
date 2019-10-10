# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd::config (
  $config_file      = 'slurmdbd.conf',
  $ensure           = $slurm::dbd::config_ensure,
  $directory        = $slurm::dbd::config_directory,
  $options          = $slurm::dbd::config_options,
  $service_account  = $slurm::dbd::service_account,
) {

  file { "${directory}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    content => template('slurm/slurmdbd.conf.erb')
  }
}

