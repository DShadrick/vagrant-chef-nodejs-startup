# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant::Config.run do |config|
  config.vm.forward_port 80, 8080
  config.vm.forward_port 443, 4040
  config.vm.forward_port 3000, 3000

  # make symlinks work in shared folder
  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]

  config.vm.define :nodejsvm do |nodejs_config|

    nodejs_config.vm.box_url = "http://files.vagrantup.com/precise32.box"
    nodejs_config.vm.box = "precise32.box"
    nodejs_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "build-essential"
      chef.add_recipe "git"
      chef.add_recipe "apt"
      chef.add_recipe "graphicsmagick"
      chef.add_recipe "nodejs"
      chef.add_recipe "vim"
    end

  end
 end