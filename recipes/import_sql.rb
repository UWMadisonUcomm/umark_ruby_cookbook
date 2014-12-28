#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: import_sql
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

postgresql_connection_info = {
  :host => "localhost",
  :port => node['postgresql']['config']['port']
}

execute "psql -U postgres map_development < /var/www/db/localdev.sql" do
  cwd node['umark_ruby']['project_root']
  user "postgres"
  # not_if 'bundle check'
end