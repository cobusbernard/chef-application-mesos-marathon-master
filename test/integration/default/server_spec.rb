# Encoding: utf-8
require 'spec_helper'

describe file('/mnt/data/configs/traefik/traefik.toml') do
  it { should be_file }
end
