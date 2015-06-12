### Build DRBD 8.4.4 RPMS for CentOS 6.5

<pre>
$ vagrant up
$ ll rpms
total 2352
-rw-r--r-- 1 ten0s ten0s   27315 Jun 12 13:35 drbd-8.4.4-4.el6.x86_64.rpm
-rw-r--r-- 1 ten0s ten0s    6320 Jun 12 13:35 drbd-bash-completion-8.4.4-4.el6.x86_64.rpm
-rw-r--r-- 1 ten0s ten0s    8244 Jun 12 13:35 drbd-heartbeat-8.4.4-4.el6.x86_64.rpm
-rw-r--r-- 1 ten0s ten0s 1930516 Jun 12 13:36 drbd-km-2.6.32_504.16.2.el6.x86_64-8.4.4-4.el6.x86_64.rpm
-rw-r--r-- 1 ten0s ten0s   26860 Jun 12 13:35 drbd-pacemaker-8.4.4-4.el6.x86_64.rpm
-rw-r--r-- 1 ten0s ten0s    5030 Jun 12 13:35 drbd-udev-8.4.4-4.el6.x86_64.rpm
-rw-r--r-- 1 ten0s ten0s  380053 Jun 12 13:35 drbd-utils-8.4.4-4.el6.x86_64.rpm
-rw-r--r-- 1 ten0s ten0s    7604 Jun 12 13:35 drbd-xen-8.4.4-4.el6.x86_64.rpm
$ vagrant destroy -f
</pre>

### NB

Starting from DRBD 8.4.5 drbd-utils moved to a separate repo.
The build procedure have to be modified.
