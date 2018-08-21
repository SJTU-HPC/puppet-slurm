# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::package (
  $ensure   = $slurm::package_ensure,
  $packages  = $slurm::package_name,
) {
  ensure_packages($packages, {'ensure' => $ensure})
}
