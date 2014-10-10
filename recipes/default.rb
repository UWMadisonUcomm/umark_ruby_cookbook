#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "ruby_build"
include_recipe "rbenv::system"
rbenv_global node['umark_ruby']['ruby_version']