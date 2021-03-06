# == Class vault::params
#
# This class is meant to be called from vault.
# It sets variables according to platform.
#
class vault::params {
  $user             = 'vault'
  $group            = 'vault'
  $bin_dir          = '/usr/local/bin'
  $config_dir       = '/etc/vault'
  $download_url     = 'https://releases.hashicorp.com/vault/0.5.0/vault_0.5.0_linux_amd64.zip'
  $service_name     = 'vault'
  $service_provider = $osfamily ? {
    'Debian'  => 'upstart',
    'RedHat'  => 'init',
    default   => 'upstart',
  }
}
