# == Class: slurm
#
# Full description of class slurm is in the README.
#
class slurm::service (
  $ensure       = $slurm::service_ensure,
  $enable       = $slurm::service_enable,
  $service      = $slurm::service_name,
  $service_cmd  = $slurm::service_cmd,
) {

  service { $service:
    ensure      => $ensure,
    enable      => $enable,
    hasstatus   => true,
    hasrestart  => true,
    status      => "/usr/bin/systemctl status  ${service_cmd}",
    start       => "/usr/bin/systemctl start   ${service_cmd}",
    stop        => "/usr/bin/systemctl stop    ${service_cmd}",
    restart     => "/usr/bin/systemctl restart ${service_cmd}",  }

}
