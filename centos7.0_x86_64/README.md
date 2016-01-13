## Create CentOS 7.0 x86_64 (3.10.0-327) box based on opscode/centos-7.0 x86_64 (3.10.0-123) (GuestAdditions 4.3.20) using VirtualBox 4.3.28

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
$ vagrant package --output ten0s_centos7.0_x86_64.box
$ vagrant box add -f ten0s/centos7.0_x86_64 ./ten0s_centos7.0_x86_64.box
</pre>

### Cleanup

<pre>
$ vagrant destroy -f; rm -rf .vagrant/ *.box
</pre>
