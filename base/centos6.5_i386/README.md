## Creating CentOS 6.5 (2.6.32-504) based on chef/centos-6.5-i386 (2.6.32-431) (GuestAdditions 4.3.8) using VirtualBox 4.3.26

### Create the box using ansible

<pre>
$ vagrant up
$ vagrant vbguest --status
GuestAdditions 4.3.26 running --- OK.
</pre>

### Package

<pre>
$ vagrant package --output ten0s_centos6.5_i386.box
$ vagrant box add -f ten0s/centos6.5_i386 ./ten0s_centos6.5_i386.box
$ vagrant destroy --force
</pre>
