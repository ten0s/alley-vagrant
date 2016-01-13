## Create CentOS 6.5 x86_64 (2.6.32-573) box based on opscode/centos-6.5 x86_64 (2.6.32-431) (GuestAdditions 4.3.8) using VirtualBox 4.3.28

### Create the box using Ansible

<pre>
$ vagrant up
$ vagrant vbguest --status
GuestAdditions 4.3.28 running --- OK.
</pre>

### Package

<pre>
$ vagrant package --output ten0s_centos6.5_x86_64.box
$ vagrant box add -f ten0s/centos6.5_x86_64 ./ten0s_centos6.5_x86_64.box
</pre>

### Cleanup

<pre>
$ vagrant destroy -f; rm -rf .vagrant/ *.box
</pre>
