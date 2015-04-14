# Creating PowerAlleyUI environment box based on CentOS 6.5 x86_64 Mono 3.2.8

## Create the box using Ansible

<pre>
$ vagrant up
</pre>

PowerAlleyUI

<pre>
sudo tar xfz poweralleyui-1.3.0.tar.gz -C /opt/
sudo chown -R bms:bms /opt/poweralleyui-1.3.0
sudo ln -s /opt/poweralleyui-1.3.0 /opt/poweralleyui
</pre>

Start everything

<pre>
sudo service mysqld restart
sudo service nginx restart
sudo service supervisord restart
exit
</pre>

## Package the provisioned box

<pre>
$ vagrant package --output ten0s_centos6.5_mono3.2.8_poweralleyui_x86_64.box
$ vagrant box add -f ten0s/ten0s_centos6.5_mono3.2.8_poweralleyui_x86_64 ./ten0s_centos6.5_mono3.2.8_poweralleyui_x86_64.box
</pre>

### Cleanup

<pre>
$ vagrant destroy -f; rm -rf .vagrant/ *.box
</pre>
