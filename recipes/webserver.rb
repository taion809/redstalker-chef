#
# Cookbook Name:: redstalker
# Recipe:: webserver
#
# Copyright (C) 2013 Nicholas Johns
# 
# All rights reserved - Do Not Redistribute
#

apt_repository 'nginx' do 
    uri 'http://ppa.launchpad.net/nginx/development/ubuntu'
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key 'C300EE8C'
end

include_recipe 'nginx'

template "#{node[:nginx]['dir']}/sites-available/redstalker.conf" do
    source "redstalker.conf.erb"
    notifies :restart, 'service[nginx]'
end