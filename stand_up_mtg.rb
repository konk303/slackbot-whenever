# !/usr/bin/env ruby

require "slack"

Slack.configure do |config|
	  config.token = 'SECRET'
end

Slack.chat_postMessage(text: '＠channel: stand up mtgの時間です', channel: 'dev-myc')
