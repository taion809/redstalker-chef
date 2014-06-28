#
# Cookbook Name:: redstalker
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'
include_recipe 'redstalker::redstalker'
include_recipe 'redstalker::blog'
include_recipe 'redstalker::webserver'
