#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: rails
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "imagemagick"
# include_recipe "phantomjs"

execute 'bundle config build.pg --with-pg-config=/usr/pgsql-9.3/bin/pg_config' do
  cwd node['umark_ruby']['project_root']
  not_if 'bundle check'
end

execute 'bundle install' do
  cwd node['umark_ruby']['project_root']
  not_if 'bundle check'
end

execute 'rake db:schema:load' do
  cwd node['umark_ruby']['project_root']
end

execute 'rake db:seed' do
  cwd node['umark_ruby']['project_root']
  not_if 'psql -U postgres -d alerts_development -c "SELECT * FROM users" | grep wisc.edu' # don't reseed if we already have data
end

execute 'rake db:schema:load RAILS_ENV=test' do
  cwd node['umark_ruby']['project_root']
end