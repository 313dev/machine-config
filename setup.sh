sudo apt-get -y upgrade
sudo apt-get -y install gcc git curl

sudo apt-get --purge remove ruby-rvm
sudo rm -rf /usr/share/ruby-rvm /etc/rvmrc /etc/profile.d/rvm.sh

\curl -L https://get.rvm.io | bash -s stable --ruby

rvm install 1.9.3
rvm --default use 1.9.3
