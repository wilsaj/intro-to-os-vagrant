what's this?
------------

This supports the [vagrant](https://vagrantup.com) workflow for GATech's online
[Introduction to Operating Systems](https://www.udacity.com/wiki/ud923) course
by automating the workflow to repackage the provided project virtual machine
image to one that works well with vagrant. vagrant makes it easier to work with
the VM from the command line by providing simple commands to start, stop and ssh
into the VM.


Only two changes have been made, because they are required to support vagrant:

- `adminuser` has passwordless sudo enabled
- openssh-server has been installed and will run on boot


ok, let's go
------------

1. install [vagrant](https://vagrantup.com)

2. either clone or download this repo and `cd` into the directory

3. now you should be able to run `vagrant up` to start the box and `vagrant ssh`
   to login as adminuser - this `./intro-to-cs-vm` directory will be sync'd to to
   `/vagrant` on the VM

4. optional: see the commented parts Vagrantfile for info on how to adjust RAM,
   CPU or link a different synced directory



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

