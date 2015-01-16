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
$ vagrant box add -f ten0s/alley-dev ./ten0s-alley-dev.box
$ vagrant destroy --force
</pre>

## Usage

<pre>
cd somewhere
vagrant init ten0s/alley-dev
</pre>

Add to Vagrant file
<pre>
  config.vm.network "forwarded_port", guest: 27017, host: 27017
  config.vm.network "forwarded_port", guest: 5672, host: 5672
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.network "forwarded_port", guest: 8002, host: 8002
  config.vm.network "forwarded_port", guest: 8071, host: 8071
</pre>

<pre>
vagrant up
vagrant ssh
sudo su - bms
</pre>

Change **smppsink** port from 2775 to 8002


Run ./http_conf.sh

db.mt_messages.findAndModify({query:{s:'delivered', t:'regular'}, sort:{rqt:-1}, update:{$set:{ri:'85ccccbf-f854-4898-86b1-5072d3e33da1', 'da.a':'375296543210'}}})
