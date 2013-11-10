#
# Cookbook Name:: redstalker
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'

git "#{node[:redstalker][:document_root]}" do
    repository node[:redstalker][:git_repository]
    reference node[:redstalker][:git_revision]
    action :sync
end

include_recipe 'redstalker::webserver'
