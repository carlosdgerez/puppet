class profile::base {
  package { 'vim':
    ensure => present,
  }

  user { 'josh':
    ensure => present,
    groups => ['sudo'],
    shell  => '/bin/bash',
  }

  file { '/home/josh':
    ensure => directory,
    owner  => 'josh',
    group  => 'josh',
  }

  file { '/home/josh/.ssh':
    ensure => directory,
    owner  => 'josh',
    group  => 'josh',
    mode   => '0700',
  }

  ssh_authorized_key { 'josh':
    ensure => present,
    user   => 'josh',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQC8pealaaDJndksWB6b/9KIyWYTqwfMVhBUgdcRkflKZegWSJXdG7fCzr9xFB09J/WRZaDmdQwYhwiY8IZ9aaSELvruQ34Ew/yPTQxa1byyHl9umsiG/b3DXa1DBjdpf1PdbT/E+rDt0X3qwMuV8ipihq+weCXX6mDs9P5v/E617zgKALooAwZ1EbMyQwSCtlyyTyxBa91qHHmJxUSBCTHWdWrqrXZl8uuaoownBl6u6SadIAoftwnMbmfaWqeWBlrl4NGROkTfBeHD+tEiL0LgKxY16bKctqj7U4bNpGmtVfk6iBuiwRTciS5VM7DOT/ONl5NDvGluxG4Q3RkCQPRP6R6Sx5afgThmNAYpNz2YWnGcDFih4cTHyp8gtuDHkrvlwnUEFQGUkTK9hSwZueyMXFl2B/cWvillBT+/m869K06OVBqZric+Kal/6yV5LF+iw+SB7fdkGcXN8nhtj3ZdMpqprSB0ul2Dtp383N/9cmf0wa92sU/0vs8l07fTY+M=',
  }

  notify {'Hello from the base class':}

}
