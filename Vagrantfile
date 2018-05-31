# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.synced_folder ".", "/vagrant", owner: "vagrant", group: "vagrant"
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    chmod +x /vagrant/bootstrap.sh
    su - vagrant -c "bash /vagrant/bootstrap.sh"
  SHELL
end
