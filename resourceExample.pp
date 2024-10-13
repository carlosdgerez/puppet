
# Here we define a resource called admin_user


define admin_user(
  $username = 'root',
  $email    = 'root@localhost',
  $pubkey
) {
  user{$username: 
        ensure => present,
        manage_home => true,
        }
  ssh_authorized_key {$email:
        ensure => present,
        eser => $username,
        type => 'ssh-rsa',
        key => $pubkey,
  }      
}

# Here we use the resource

admin_user {'bob':
  username => 'bob',
  email => 'bob@example.com',
  pubkey => 'thisisanexample'
}
