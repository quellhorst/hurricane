#!/usr/bin/env ruby
require 'rubygems'
require 'right_aws'
require 'yaml'

CONFIG = YAML::load(File.open('aws.yml'))
@ec2 = RightAws::Ec2.new(CONFIG[:access_key_id], CONFIG[:secret_access_key])
@ec2.run_instances('ami-51709438', 1, 1, ['default'], 'rs', '', 'public')

#how to ssh to a machine ssh -i ~/.ec2/some-keypair root@ec2-61-211-41-211.compute-1.amazonaws.com
# on remote apt-get update
# from http://www.howtoforge.com/installing_puppet_on_ubuntu
# apt-get install libopenssl-ruby rdoc irb1.8 libopenssl-ruby1.8 libreadline-ruby1.8 libruby1.8 rdoc1.8 ruby1.8
# apt-get -t feisty install facter puppet puppetmaster
# have to add hosts entry for puppet
# need to compile rubygems from source/install package
# need to create ~/.gemrc maybe wget from s3
# need shared ssh key to get from github.
# ssh-keygen -t rsa
# had to add key to duffman project as deploy key.
# cd /mnt
# git clone git@github.com:username/project.git
# had to trust github.com

