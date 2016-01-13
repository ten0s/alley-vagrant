## Create CentOS 6.5 i386 (2.6.32-573) based on opscode/centos-6.5-i386 (2.6.32-431) (GuestAdditions 4.3.8) using VirtualBox 4.3.28

### Create the box using Ansible

<pre>
$ vagrant up
</pre>

The most probably every first provisioning will fail with:
<pre>
Building the OpenGL support module[FAILED]
</pre>

This is alright for my cases. Just run one more:
<pre>
$ vagrant provision
</pre>

<pre>
$ vagrant vbguest --status
GuestAdditions 4.3.28 running --- OK.
</pre>

### Package

<pre>
$ vagrant package --output ten0s_centos6.5_i386.box
$ vagrant box add -f ten0s/centos6.5_i386 ./ten0s_centos6.5_i386.box
</pre>

### Cleanup

<pre>
$ vagrant destroy -f; rm -rf .vagrant/ *.box
</pre>
