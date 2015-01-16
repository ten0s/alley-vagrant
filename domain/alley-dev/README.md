# Creating PowerAlley dev environment box based on CentOS 6.5 x86_64

## Create the box semi-manually

<pre>
git clone git@github.com:PowerMeMobile/alley-setup.git
vagrant up
vagrant ssh
sudo reboot
vagrant ssh
sudo su - bms
rabbitmqctl add_user alley PASSWORD
rabbitmqctl set_permissions -p / alley ".*" ".*" ".*"
rabbitmqctl set_user_tags alley administrator
rabbitmqctl delete_user guest
exit
exit
</pre>

## Package the provisioned box

<pre>
$ vagrant package --output ten0s-alley-dev.box
$ vagrant box add -f ten0s/ten0s-alley-dev ./ten0s-alley-dev.box
$ vagrant destroy --force
</pre>
