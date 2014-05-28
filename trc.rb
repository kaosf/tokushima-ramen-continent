#!/usr/bin/env ruby

require 'twitter'
require 'readline'

$VERBOSE = nil # not to output any warning to stderr

Twitter.configure do |config|
  config.consumer_key = 'SECRET 1'
  config.consumer_secret = 'SECRET 2'
  config.oauth_token = 'YOUR ORIGINAL'
  config.oauth_token_secret = 'YOUR ORIGINAL'
end

Twitter.update(Readline.readline)
