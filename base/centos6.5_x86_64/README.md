# Creating CentOS 6.5 x86_64 (2.6.32-504) box based on chef/centos-6.5 x86_64 (2.6.32-431) (GuestAdditions 4.3.8) using VirtualBox 4.3.26

## Create the box manually

<pre>
$ (vagrant plugin list | grep vagrant-vbguest) || vagrant plugin install vagrant-vbguest
$ vagrant up
$ vagrant vbguest --status
GuestAdditions versions on your host (4.3.26) and guest (4.3.8) do not match.
$ vagrant ssh -c 'sudo yum -y update kernel; sudo reboot'
$ sleep 120
$ vagrant vbguest
$ vagrant ssh -c 'sudo rm -rf /opt/VBoxGuestAdditions-4.3.8'
$ vagrant ssh -c 'sudo yum -y remove gcc kernel-devel perl'
$ vagrant vbguest --status
GuestAdditions 4.3.26 running --- OK.
</pre>

## Package

<pre>
$ vagrant package --output ten0s_centos6.5_x86_64.box
$ vagrant box add -f ten0s/centos6.5_x86_64 ./ten0s_centos6.5_x86_64.box
$ vagrant destroy --force
</pre>
