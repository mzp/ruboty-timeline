module Ruboty
    module Handlers
      class Timeline < Base
        on //, name: "timeline", description: "timeline", all: true

        def timeline(message)
          Ruboty::Timeline::Actions::Say.new(message).call
        end
      end
    end
end
