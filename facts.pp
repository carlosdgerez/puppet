case $facts ['os'] ['name'] {
  'Solaris':              {include role::solaris}
  'RedHat', 'CentOS':     {include role::redhat}
  /^(Debian|Ubuntu)$/:    {include role::debian}
  default:                {include role::generic}
}

# Functions

# fail

case $facts ['os'] ['name'] {
  'Solaris':              {include role::solaris}
  'RedHat', 'CentOS':     {include role::redhat}
  /^(Debian|Ubuntu)$/:    {include role::debian}
  default:                { fail ('Unsupported operative system')}
}

# epp

file {'/etc/motd':
  content => epp ('motd/message.epp', {
      message => 'Welcome to the server!'
  })
}

# lookup

$userlist = lookup('profile::admin_users::users')

user {$userlist:
ensure => present,
}
