# !/usr/bin/env ruby

require "slack"

Slack.configure do |config|
  config.token = File.read('./TOKEN').chomp
end

Slack.chat_postMessage(text: %w(foo bar baz hei ho).sample, channel: 'random')
