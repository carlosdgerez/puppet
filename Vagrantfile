# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "bento/ubuntu-22.04"

Vagrant.configure("2") do |config|
  config.vm.box = BOX

  config.vm.define :puppet do |puppet|
    puppet.vm.network :private_network, ip: "10.0.56.10"
    puppet.vm.network "forwarded_port", guest: 80, host: 8080
    puppet.vm.hostname = "puppet.local"    

    puppet.vm.synced_folder ".", "/puppet_course"
    puppet.vm.provider :virtualbox do |vb|
      vb.memory = "4096"
    end
 end

  config.vm.define :web do |web|
    web.vm.network :private_network, ip: "10.0.56.11"
    web.vm.hostname = "web.local"
  end

  config.vm.define :db do |db|
    db.vm.network :private_network, ip: "10.0.56.12"
    db.vm.hostname = "db.local"
  end

end
