name 'varnish_ng'
maintainer 'Virender Khatri'
maintainer_email 'vir.khatri@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures varnish'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.4'

depends 'apt'
depends 'yum', '~> 3.0'

%w(ubuntu amazon centos redhat fedora).each do |os|
  supports os
end
