#
# Cookbook Name:: my_first_cookbook
# Recipe:: default
#
package 'httpd' do
  action :install
end

service 'httpd' do
  action [ :enable, :start ]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
