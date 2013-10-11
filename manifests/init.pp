class motd {
  file {
    "etc-motd":
      ensure => present,
      path => '/etc/motd',
      content => template('motd/etc-motd.erb'),
      owner => 'root',
      group => 'group',
      mode => '0644';
  }
}
