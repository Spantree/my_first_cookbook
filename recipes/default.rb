#
# Cookbook Name:: my_first_cookbook
# Recipe:: default
#
include_recipe 'yum-epel'

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
