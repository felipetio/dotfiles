# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "default" do |grubster|
    grubster.vm.box = "default"
    grubster.vm.synced_folder "~/Projects/site", "/home/vagrant/site", nfs: true
    grubster.vm.synced_folder "~/Projects/lingo", "/home/vagrant/lingo", nfs: true
    grubster.vm.synced_folder "~/Projects/opec", "/home/vagrant/opec", nfs: true
    grubster.vm.network "private_network", ip: "192.168.10.3"
    grubster.vm.network "forwarded_port", guest: 3000, host: 3000
    grubster.vm.network "forwarded_port", guest: 3001, host: 3001
    #grubster.vm.network "forwarded_port", guest: 4200, host: 4200 
    grubster.vm.network "forwarded_port", guest: 3306, host: 3306
    grubster.vm.network "forwarded_port", guest: 9200, host: 9200
    grubster.vm.network "forwarded_port", guest: 1080, host: 1080
  end
end




