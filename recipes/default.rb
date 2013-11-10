#
# Cookbook Name:: redstalker
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'

git "#{default[:redstalker][:document_root]}" do
    repository default[:redstalker][:git_repository]
    reference default[:redstalker][:git_revision]
    action :sync
end

include_recipe 'redstalker::webserver'
