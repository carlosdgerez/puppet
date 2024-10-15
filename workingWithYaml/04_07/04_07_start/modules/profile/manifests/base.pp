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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQCh37exaSiUb5POtmmDYc+5F4paZ5AX4w6AWPmbhtG1rObtMlGx+mNJxssKeKVS8fqmvpLxe8tvJqwwf9Q06tFerkYHmqKymS7z5ZEW9ZKpYdskfAwZ3eI4bb3L427lYJXOr1XOxG1suTwnc8dRFlh5b+xgp8ntvhyQgljx8fiIH19OAIojwENPMEm0b/85JPzVps2FnqEbhhZ+hhK52EIP10vzGJhpl8VLD7GxMdV+ibIb+RA2KxevP42zDCqATU+o6ZM8df11CKQhZCEge0oCaSYppy1G8Yf/p8gWuoAGJxOVh8PWiVNvUQX9XtLufj4VnEFSvKaboRrC6oTl0QQ+UGDDQ2AqrybUwxcwMDWIxtUbCWRzOlzQkTKFw1jK0y82Y1QVHDHpw3IBVqfsnDqbTM/Gii3wexxEaAJv8+xfY9uVhdYdA2yjAJm6pH4YirqIZtVCrMrtIAnsADc7tOV6jhKIjl/afjGDJMh5rLxosSNfM72s+aCgrXnwhq03ZXM=',
  }

  notify {'Hello from bolt':}

}
