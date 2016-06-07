#
# Cookbook Name:: ruby
# Recipe:: bundle
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash 'Install bundler gem' do
  environment "HOME" => '/home/ops'
  user 'ops'
  group 'ops'
  code <<-EOH
  ~/.rbenv/versions/2.3.1/bin/gem install bundler
  EOH
  action :run
  not_if "bundler -v", :user => 'ops'
end
