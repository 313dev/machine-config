sudo apt-get -y upgrade
sudo apt-get -y install gcc git curl

# Clear out any ubuntu RVM stuff
sudo apt-get -y --purge remove ruby-rvm
sudo apt-get -y autoremove
sudo rm -rf /usr/share/ruby-rvm /etc/rvmrc /etc/profile.d/rvm.sh

# install RVM and ruby 1.9.3
\curl -L https://get.rvm.io | bash -s stable --ruby
rvm install 1.9.3
rvm --default use 1.9.3
