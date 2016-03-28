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
