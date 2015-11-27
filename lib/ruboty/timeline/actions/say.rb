require 'slack-notifier'
require 'open-uri'

module Ruboty
  module Timeline
    module Actions
      class Say
        attr_reader :message

        def initialize(message)
          @message = message
        end

        def call
          if room =~ /current/
            notifier.ping "#{body}\n(\##{room})", username: from, icon_url: icon(from), link_names: true
          end
        end

        private

        def from
          message.from_name
        end

        def body
          message.body
        end

        def room
          message.from.gsub(/@.*$/, '')
        end

        def notifier
          @notifier ||= ::Slack::Notifier.new webhook_url
        end

        def icon(name)
          members.find{|x| x['name'] == name }['profile']['image_original']
        rescue
          nil
        end

        def members
          @members ||= JSON.parse(open(url).read)['members']
        end

        def webhook_url
          ENV['RUBOTY_TIMELINE_WEBHOOK']
        end

        def url
          "https://slack.com/api/users.list?token=#{ENV['RUBOTY_TIMELINE_TOKEN']}"
        end
      end
    end
  end
end
