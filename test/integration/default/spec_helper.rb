# Encoding: utf-8
require 'serverspec'

# Required by serverspec
set :backend, :exec
#set :path, '/sbin:/usr/bin'
set :path, '/bin:/usr/local/bin:$PATH'
