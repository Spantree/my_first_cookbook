#
# Cookbook Name:: my_first_cookbook
# Recipe:: default
#
include_recipe 'yum-epel'
include_recipe 'system'
include_recipe 'ntp'

system_timezone 'America/New_York'

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

template '/usr/share/nginx/html/index.html' do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
