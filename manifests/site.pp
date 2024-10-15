node 'web.local' {include role::webserver}
node 'puppet.local' {include role::puppetserver}
node default {include role::default}
