# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # For a complete reference of configuration options, please see the online
  # documentation at https://docs.vagrantup.com.


  # This tells vagrant which box to use. You'll want to switch this if you build
  # your own box locally by deleting or commenting out the hosted version and
  # uncommenting the local version.
  #
  # hosted version: use this version for the hosted vagrant box
  config.vm.box = "wilsaj/intro-to-os"

  # local version: use this version if you built your own vagrant box locally
  #config.vm.box = "intro-to-os"

  # Use 'adminuser' credentials for vagrant to log in. Don't change this.
  config.ssh.username = "adminuser"
  config.ssh.password = "adminuser"


  # This allows you to share an additional folder to the guest VM. The first
  # argument is the path on the host to the actual folder. The second argument
  # is the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  #config.vm.synced_folder "../intro-to-os-code", "/intro-to-os-code"

  # Virtualbox configuration:
  config.vm.provider "virtualbox" do |vb|
    # uncomment to display the VirtualBox GUI when booting the machine
    #vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "1024"

    # Customize the number of processors available (more than one processor is
    # recommended to test for concurrency issues):
    vb.cpus = 2
  end
end
