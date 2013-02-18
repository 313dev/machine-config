sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install gcc git curl tree mercurial build-essential openssl libreadline6 libreadline6-dev git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config


# Clear out any ubuntu RVM stuff
sudo apt-get -y --purge remove ruby-rvm
sudo apt-get -y autoremove
sudo rm -rf /usr/share/ruby-rvm /etc/rvmrc /etc/profile.d/rvm.sh

# install RVM and ruby 1.9.3
\curl -L https://get.rvm.io | bash -s stable --ruby

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bash_profile
. ~/.bash_profile

rvm install 1.9.3
rvm --default use 1.9.3

gem install bundler
gem install rspec
gem install cucumber

# install better version of Vim
cd /tmp
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure --enable-rubyinterp --enable-multibyte --with-tlib=ncurses --with-features=huge
make
sudo make install

# put /usr/local/bin on the path
echo 'PATH=/usr/local/bin:$PATH' >> ~/.bashrc
