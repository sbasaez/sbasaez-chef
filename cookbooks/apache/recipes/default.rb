#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#install apache 

package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apache' do
	service_name 'httpd'
	action [:start, :enable]
end

include_recipes 'apache:: websites'

