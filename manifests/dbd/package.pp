# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::dbd::package (
  $ensure   = $slurm::dbd::package_ensure,
  $package  = ['slurm-slurmdbd', 'slurm-munge'],
) {

  package { $package:
    ensure => $ensure,
  }
}
