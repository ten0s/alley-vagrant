## Create CentOS 6.5 x86_64 with Mono 3.2.8 box

### Create the box using Ansible

<pre>
$ vagrant up
</pre>

### Package

<pre>
$ vagrant package --output ten0s_centos6.5_mono3.2.8_x86_64.box
$ vagrant box add -f ten0s/centos6.5_mono3.2.8_x86_64 ./ten0s_centos6.5_mono3.2.8_x86_64.box
</pre>

### Cleanup

<pre>
$ vagrant destroy -f; rm -rf .vagrant/ *.box
</pre>
