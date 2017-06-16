#
# These modules REQUIRE at least puppet 4.9 or higher
#
echo 'Installing required packages...'
yum install git puppet-agent-1.9.3 --nogpg -y > /dev/null 2>&1

#
#
#
# Install librarian puppet. We need this to download the correct set of puppet modules
#
echo 'Installing required puppet modules...'
/opt/puppetlabs/puppet/bin/gem install librarian-puppet > /dev/null 2>&1
cd /vagrant
/opt/puppetlabs/puppet/bin/librarian-puppet install


#
# Setup hiera search and backend. We need this to config our systems
#
echo 'Setting up hiera directories...'
rm -f /etc/puppetlabs/puppet/hiera.yaml /etc/puppetlabs/hiera.yaml /etc/puppetlabs/code/hiera.yaml
ln -sf /vagrant/hiera.yaml /etc/puppetlabs/code/environments/production/hiera.yaml

dirname=/etc/puppetlabs/code/environments/production/hieradata
if [ -d $dirname ]; then
  rm -rf $dirname
else
  rm -f $dirname
fi
ln -sf /vagrant/hieradata /etc/puppetlabs/code/environments/production

#
# Configure the puppet path's
#
echo 'Setting up Puppet module directories...'
dirname=/etc/puppetlabs/code/environments/production/modules
if [ -d $dirname ]; then
  rm -rf $dirname
else
  rm -f $dirname
fi
ln -sf /vagrant/modules /etc/puppetlabs/code/environments/production

echo 'Setting up Puppet manifest directories...'
dirname=/etc/puppetlabs/code/environments/production/manifests
if [ -d $dirname ]; then
  rm -rf $dirname
else
  rm -f $dirname
fi
ln -sf /vagrant/manifests /etc/puppetlabs/code/environments/production

#
# Setup software directory
#
echo 'Setting up Puppet software directories...'
dirname=/etc/puppetlabs/code/environments/production/modules/software/files
if [ -d $dirname ]; then
  rm -rf $dirname
else
  rm -f $dirname
fi
ln -sf /vagrant/software /etc/puppetlabs/code/environments/production/modules/software/files

#
# Setup bar_files directory
#
echo 'Setting up Puppet bar_files directories...'
dirname=/etc/puppetlabs/code/environments/production/modules/bar_files/files
if [ -d $dirname ]; then
  rm -rf $dirname
else
  rm -f $dirname
fi
ln -sf /vagrant/bar_files /etc/puppetlabs/code/environments/production/modules/bar_files/files
