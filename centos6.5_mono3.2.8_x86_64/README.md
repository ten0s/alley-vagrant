# Creating CentOS 6.5 x86_64 with Mono 3.2.8 box

## Create the box using Ansible

<pre>
$ vagrant up
$ vagrant ssh-config
</pre>

Make sure ssh config matches data in **inventory** file.
Then check the connection.

<pre>
$ ansible vb-mono -i inventory -m ping
vb-mono | success >> {
    "changed": false,
    "ping": "pong"
}
</pre>

Provision the box.

<pre>
$ ansible-playbook setup-mono.yml -i inventory
</pre>

## Create the box manually

<pre>
$ vagrant up
$ vagrant ssh
</pre>

Inside the virtual machine:

<pre>
$ sudo su
# adduser bms
# cat &gt;&gt; /etc/hosts &lt;&lt;EOF
178.124.154.132 sus.dev1team.net
EOF
# cat &gt; /etc/yum.repos.d/pmm-base.repo &lt;&lt;EOF
[pmm-base]
name=PMM Base repository.
enabled=1
gpgcheck=0
baseurl=http://sus.dev1team.net/rawshaun-sus/pmm-base/base/
EOF
# yum -y install epel-release
# yum -y update
# yum -y install libgdiplus libgdiplus-devel
# yum -y install pmm-mono-3.2.8-rel_VisualBasicPatch_20141022.x86_64
# cat &gt;&gt; /etc/profile &lt;&lt;EOF
source /opt/mono-3.2.8/env.rc
EOF
# exit
$ exit
</pre>

## Package the provisioned box

<pre>
$ vagrant package --output ten0s_centos6.5_mono3.2.8_x86_64.box
$ vagrant box add -f ten0s/centos6.5_mono3.2.8_x86_64 ./ten0s_centos6.5_mono3.2.8_x86_64.box
$ vagrant destroy --force
</pre>
