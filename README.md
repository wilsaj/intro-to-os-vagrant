what's this?
------------

This supports the [vagrant](https://vagrantup.com) workflow for GATech's online
[Introduction to Operating Systems](https://www.udacity.com/wiki/ud923) course
by automating the workflow to repackage the provided project virtual machine
image to one that works well with vagrant. vagrant makes it easier to work with
the VM from the command line by providing simple commands to start, stop and ssh
into the VM.


Only two changes have been made, because they are required by vagrant:

- `adminuser` has passwordless sudo enabled
- openssh-server has been installed and will run on boot



ok, let's go
------------

1. install [vagrant](https://vagrantup.com)

2. either clone or download this repo and `cd` into this repo directory

3. run `vagrant up` to build and start the box

4. run `vagrant ssh` to log in as adminuser. By default, the repo
   `./intro-to-os-vagrant` directory will be sync'd to to `/vagrant` on the VM
   so you can edit in files on your host machine and they'll appear in
   `/vagrant/` from the VM. Check out the comments about
   `config.vm.synced_folder` in the `Vagrantfile` for info about how add another
   synced directory (recommended).

5. optional: you can adjust the amount of RAM (default: 1GB) and number of CPUs
   (default 2) by editing the appropriate sections of the `Vagrantfile`



building your own
-----------------

Maybe you want to build your own for some reason. Go for it! This should work
fine on OSX and Linux, but not Windows. Vagrant and Packer are supported on
Windows, so it would be possible to port the Makefile but I don't really have
time to figure that out - sorry!


1. install [packer](https://packer.io/)

2. run `make`

3. at some point the packer build will pause and open a virtualbox window, when
   that happens, open a terminal in the VM (click the XTerm icon on the left
   dock) and run the following command (use passwd `adminuser` when prompted):

     `sudo apt-get update && sudo apt-get install -y openssh-server`


4. wait for the packer build to finish



troubleshooting: it's broken
----------------------------

Oh no. Feel free to [open an
issue](https://github.com/wilsaj/intro-to-os-vm/issues), but you are probably
better off falling back to the official course instructions for setting up a VM.
In particular, Windows support is kind of dicey since I don't use it very often
for software development. I don't want to keep you from getting your work done
and it may be a while before I get back to you.
