#!/usr/bin/env ruby

require 'twitter'

$VERBOSE = nil # not to output any warning to stderr

Twitter.configure do |config|
  config.consumer_key = 'SECRET 1'
  config.consumer_secret = 'SECRET 2'
  config.oauth_token = 'YOUR ORIGINAL'
  config.oauth_token_secret = 'YOUR ORIGINAL'
end

if ARGV.length == 0
  Twitter.update(STDIN.gets)
else
  if ARGV[0] == '-t' && ARGV.length >= 2
    Twitter.update(ARGV[1])
  end
end
