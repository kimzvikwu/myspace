#
# Cookbook Name:: myspace
# Recipe:: default
#
# Copyright 2013, Western Union
#
# All rights reserved - Do Not Redistribute
#
package 'apache2'
 
service 'apache2' do
  action [:enable, :start]
end

template '/var/www/index.html' do
  owner   'root'
  group   'root'
  mode    '0755'
  source  'index.html.erb'
end
