#
# Cookbook Name:: chef-application-mesos-marathon-master
# Recipe:: default
#
# Copyright (C) 2016 Cobus Bernard
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

include_recipe "chef-wrapper-zookeeper::default"
include_recipe "chef-wrapper-mesos::master"
include_recipe "chef-wrapper-mesos::slave"
include_recipe "chef-wrapper-marathon::default"

directory '/mnt/data/configs/traefik' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

template "/mnt/data/configs/traefik/traefik.toml" do
  source "traefik.erb"
  owner 'root'
  group 'root'
  mode '0755'
  variables({
   :traefik_domain => node['traefik']['domain']
  })
end
