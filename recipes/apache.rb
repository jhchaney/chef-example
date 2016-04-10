#
# Cookbook Name:: chef-example
# Recipe:: default
#
# Copyright (C) 2016 John Chaney
#
# All rights reserved - Do Not Redistribute
#

group 'web'

user 'web' do
  action :create
  group 'web'
  system true  
  shell '/bin/bash'
end

package 'Apache Server' do
  action :install
  case node['platform']
    when 'ubuntu','debian'
      package_name 'apache2'
    when 'centos','redhat','amazon', 'scientific', 'oracle'
      package_name 'httpd'
  end
end

service 'Apache Service' do 
  action :start
  case node['platform']
    when 'ubuntu','debian'
      service_name 'apache2'
    when 'centos','redhat','amazon', 'scientific', 'oracle'
     service_name 'httpd'
   end
 end

    

file '/var/www/html/index.html' do
   action :create
   mode '0644'
   owner 'web'
   group 'web'
   content '<html>Custom static content</html>'
end