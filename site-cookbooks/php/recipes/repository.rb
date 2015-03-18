# Install EPEL repository
yum_repository 'epel' do
  description 'Extra Packages for Enterprise Linux'
  mirrorlist 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
  gpgkey 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
  action :create
end

# Install remi repository
yum_repository 'remi' do
  description 'Les RPM de remi pour Enterprise Linux'
  mirrorlist 'http://rpms.famillecollet.com/enterprise/6.5/remi/mirror'
  gpgkey 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  enabled true
  gpgcheck true
  action :create
end

# Install remi php55 repo
yum_repository 'remi-php55' do
  description 'Les RPM de remi de PHP 5.5 pour Enterprise Linux'
  mirrorlist 'http://rpms.famillecollet.com/enterprise/6.5/php55/mirror'
  gpgkey 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  enabled false
  gpgcheck true
  action :create
end