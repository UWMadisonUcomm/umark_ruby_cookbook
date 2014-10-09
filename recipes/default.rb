#
# Cookbook Name:: umark_ruby_cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package "openssl"
# package "openssl-devel"
# package "zlib-devel"
# package "readline-devel"
# include_recipe "build-essential"

# ruby_build_ruby node['umark_ruby']['ruby_version']
include_recipe "ruby_build"
include_recipe "rbenv::system"
rbenv_global "2.1.1"


# magic_shell_environment 'PATH' do
#   value "/usr/pgsql-" + node['postgresql']['version'] + "/bin:" + "/usr/local/ruby/" + node['umark_ruby']['ruby_version'] + "/bin:$PATH"
# end

# execute 'gem install bundler' do
#   cwd node['umark_ruby']['project_root']
# end

# gem_package "bundler"

