## Create PowerAlleyUI environment box based on CentOS 6.5 x86_64 Mono 3.2.8

### Create the box using Ansible

<pre>
$ vagrant up
$ ansible test -i inventories/test -m ping
test | success >> {
    "changed": false,
    "ping": "pong"
}
$ ansible-playbook provision.yml -i inventories/test
</pre>

### Package

<pre>
$ vagrant package --output ten0s_centos6.5_mono3.2.8_poweralleyui_x86_64.box
$ vagrant box add -f ten0s/ten0s_centos6.5_mono3.2.8_poweralleyui_x86_64 ./ten0s_centos6.5_mono3.2.8_poweralleyui_x86_64.box
</pre>

### Cleanup

<pre>
$ vagrant destroy -f; rm -rf .vagrant/ *.box
</pre>
