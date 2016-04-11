#
# Cookbook Name:: chef-example
# Recipe:: default
#
# Copyright (C) 2016 John Chaney
#
# All rights reserved - Do Not Redistribute
#


mysql2_chef_gem 'default'

mysql_service 'default' do
  version '5.5'
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password 'changeit'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

mysql_connection_info = {
    :host     => '127.0.0.1',
    :username => 'root',
    :port => '3306',
    :password => 'changeit'
}

mysql_database 'test_db' do
  connection mysql_connection_info
  action :create
end