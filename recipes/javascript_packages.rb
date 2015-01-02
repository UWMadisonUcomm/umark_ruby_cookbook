#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: javascript_packages
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nodejs"
include_recipe "grunt_cookbook::install_grunt_cli"

cookbook_file "tmp_npm.sh" do
  path node['umark_ruby']['project_root'] + "tmp_npm.sh"
  mode '0755'
  action :create
end

execute "run tmp npm install to bypass NFS permission issues" do
  cwd node['umark_ruby']['project_root']
  # user "vagrant"
  action :run
  command "./tmp_npm.sh install"
end