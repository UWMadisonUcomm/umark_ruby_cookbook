# Author:: Nick Weaver (<jnweaver@wisc.edu>)
# Cookbook Name:: umark_ruby
# Attribute:: default

default['umark_ruby']['project_root'] = '/var/www/'
default['umark_ruby']['ruby_version'] = '2.1.1'
default['umark_ruby']['db_name'] = 'my_db_name'
default['umark_ruby']['db_name_test'] = 'my_db_name_test'
default['rbenv']['rubies'] = [ node['umark_ruby']['ruby_version'] ]
default['rbenv']['gems'] = {
  node['umark_ruby']['ruby_version'] => [
    { 'name'    => 'bundler', 'options' => "--force" }
  ]
}
default['postgresql']['assign_postgres_password'] = false
default['postgresql']['enable_pgdg_yum'] = true
default['postgresql']['version'] = "9.3"
default['postgresql']['password']['postgres'] = "md53175bce1d3201d16594cebf9d7eb3f9d" # 'postgres'
default['postgresql']['client']['packages'] = ["postgresql#{node['postgresql']['version'].split('.').join}-devel"]
default['postgresql']['server']['packages'] = ["postgresql#{node['postgresql']['version'].split('.').join}-server"]
default['postgresql']['contrib']['packages'] = ["postgresql#{node['postgresql']['version'].split('.').join}-contrib"]
default['postgresql']['dir'] = "/var/lib/pgsql/#{node['postgresql']['version']}/data"
default['postgresql']['server']['service_name'] = "postgresql-#{node['postgresql']['version']}"
default['postgresql']['pg_hba'] = [
  {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'trust'},
  {:type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'trust'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'trust'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'trust'}
]
default['phantomjs']['install_method'] = 'package'
default['phantomjs']['version'] = '2.1.1'
default['nodejs']['version'] = '0.10.35'