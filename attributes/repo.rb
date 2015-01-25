# varnish apt repo
# supports only ubuntu and debian
default['varnish']['apt']['uri'] = "http://repo.varnish-cache.org/#{node['platform']}"
default['varnish']['apt']['enable'] = true
default['varnish']['apt']['distribution'] = node['lsb']['codename']
default['varnish']['apt']['components'] = ["varnish-#{node['varnish']['version']}"]
default['varnish']['apt']['keyserver'] = 'keyserver.ubuntu.com'
default['varnish']['apt']['key'] = 'C4DEFFEB'
default['varnish']['apt']['deb_src'] = true
default['varnish']['apt']['action'] = :add

# varnish yum repo
default['varnish']['yum']['enable'] = true
default['varnish']['yum']['description'] = 'varnish cache'
default['varnish']['yum']['gpgcheck'] = true
default['varnish']['yum']['gpgkey'] = 'http://repo.varnish-cache.org/debian/GPG-key.txt'
default['varnish']['yum']['action'] = :create

case node['platform']
when 'amazon'
  default['varnish']['yum']['platform'] = 6
when 'redhat', 'centos'
  default['varnish']['yum']['platform'] = node['version']
else
  default['varnish']['yum']['platform'] = 7
end

default['varnish']['yum']['url'] = "http://repo.varnish-cache.org/redhat/varnish-#{node['varnish']['version']}/el#{node['varnish']['yum']['platform']}"