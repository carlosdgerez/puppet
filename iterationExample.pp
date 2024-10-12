$userlist = ['alice','bob','carol']

$userlist.each |$local_user| {
  user { $local_user:
    ensure => present}
  }
  file { "/opt/personal/${local_user}":
    ensure => directory,
  }
