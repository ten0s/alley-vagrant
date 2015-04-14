## Create CentOS 6.5 x86_64 (2.6.32-504) box based on chef/centos-6.5 x86_64 (2.6.32-431) (GuestAdditions 4.3.8) using VirtualBox 4.3.26

### Create the box using Ansible

<pre>
$ vagrant up
$ vagrant vbguest --status
GuestAdditions 4.3.26 running --- OK.
</pre>

### Package

<pre>
$ vagrant package --output ten0s_centos6.5_x86_64.box
$ vagrant box add -f ten0s/centos6.5_x86_64 ./ten0s_centos6.5_x86_64.box
$ vagrant destroy -f
$ rm ten0s_centos6.5_x86_64.box
</pre>
