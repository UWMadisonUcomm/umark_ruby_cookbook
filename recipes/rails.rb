#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: rails
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'rake db:schema:load' do
  cwd node['umark_ruby']['project_root']
end

execute 'rake db:seed' do
  cwd node['umark_ruby']['project_root']
  not_if 'psql -U postgres -d alerts_development -c "SELECT * FROM users" | grep wisc.edu' # don't reseed if we already have data
end