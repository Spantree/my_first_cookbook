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

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
