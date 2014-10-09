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

grunt_cookbook_npm node['umark_ruby']['project_root'] do
  action :install
end