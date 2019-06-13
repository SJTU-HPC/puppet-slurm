# @!visibility private
class slurm::params {

  case $::osfamily {
    'RedHat': {
      $package_name = ['slurm', 'slurm-contribs', 'slurm-pam_slurm', 'slurm-perlapi', 'slurm-slurmctld', 'slurm-slurmd', 'slurm-libpmi', 'slurm-devel', 'slurm-contribs', 'slurm-example-configs']
    }
    'Debian': {
      $package_name = ['slurmctld', 'slurmd', 'slurm-client', 'slurm-wlm-basic-plugins', 'libpam-slurm', 'libpmi0', 'libpmi2-0']
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}
