# Here we use a template created before
# motd.epp is the name of the file template refers.

file { '/etc/motd':
  ensure => file,
  content => epp('profile/motd.epp',{
    hostname => 'prod-web1',
    environment => 'prod',
    server_type => 'web',
    customer_facing => true,
    register_ticket_message => true,
    read_only_permited => true,
  })
}

