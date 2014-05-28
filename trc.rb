#!/usr/bin/env ruby

require 'twitter'
require 'readline'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = 'Comsumer Key'
  config.consumer_secret     = 'Comsumer Secret'
  config.access_token        = 'Access Token'
  config.access_token_secret = 'Access Token Secret'
end

puts 'Press Ctrl-C to cancel'
tweet = Readline.readline('>')
begin
  client.update(tweet) unless tweet.nil?
rescue Twitter::Error::Unauthorized
  $stderr.puts 'Authentication error. (check 4 tokens)'
end
