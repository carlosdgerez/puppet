class motd {
  file {'Mesagge of the day':
    path  => '/etc/motd',
    ensure => file,
    content => 'This is the mesagge of the day!',
  }
}


class profile::motd (
  String $message ='This is the default message',
) {
  file { 'Message of the day':
    path    => '/etc/motd',
    ensure  => file,
    content => $message,
  }
}


include profile::motd

class { 'profile::motd': 
    ensure => present,
    message => 'Hello World!',
}

