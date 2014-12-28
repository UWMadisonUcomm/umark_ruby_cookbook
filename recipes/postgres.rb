#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: postgres
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "database::postgresql"
include_recipe "postgresql::server"
include_recipe "postgresql::ruby"

postgresql_connection_info = {
  :host => "localhost",
  :port => node['postgresql']['config']['port'],
  :username => "postgres"
}

postgresql_database_user node['umark_ruby']['db_user_name'] do
  connection postgresql_connection_info
  password   ''
  action     :create
end

postgresql_database node['umark_ruby']['db_name'] do
  connection postgresql_connection_info
  action :create
end

postgresql_database node['umark_ruby']['db_name_test'] do
  connection postgresql_connection_info
  action :create
end

postgresql_database "grant superuser" do
  connection postgresql_connection_info
  database_name 'postgres'
  sql "ALTER USER #{node['umark_ruby']['db_user_name']} WITH SUPERUSER"
  action :query
end

# postgresql_database_user "grant_dev_privs" do
#   connection    postgresql_connection_info
#   username node['umark_ruby']['db_user_name']
#   database_name node['umark_ruby']['db_name']
#   privileges    [:all]
#   action        :grant
# end

# postgresql_database_user "grant_test_privs" do
#   connection    postgresql_connection_info
#   username node['umark_ruby']['db_user_name']
#   database_name node['umark_ruby']['db_name_test']
#   privileges    [:all]
#   action        :grant
# end
