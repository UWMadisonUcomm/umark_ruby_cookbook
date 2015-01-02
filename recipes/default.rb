#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

selinux_state "SELinux Disabled" do
  action :disabled
end

user "railsuser" do
  uid node['map']['uid']
  gid node['map']['gid']
  system true
end

include_recipe "ruby_build"
include_recipe "rbenv::system"
rbenv_global node['umark_ruby']['ruby_version']