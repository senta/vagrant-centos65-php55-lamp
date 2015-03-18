#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe "php::repository"

pkg = %W{
  php
  php-devel
  php-cli
  php-pear
  php-mbstring
  php-pdo
  php-xml
  php-gd
  php-mysql
  php-pecl-xdebug
}

pkg.each {|p|
  package p do
    action :install
    options "--enablerepo=remi --enablerepo=remi-php55"
  end
}

template "/etc/php.d/xdebug.ini" do
  owner "root"
  group "root"
  mode 0644
  
  notifies :restart, 'service[httpd]'
end
