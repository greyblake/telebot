module Telebot
  class Bot
    # Default update time
    DEFAULT_UPDATE_TIME = 2

    attr_reader :client, :processed_update_ids, :update_time

    def initialize(token, update_time: DEFAULT_UPDATE_TIME)
      @client = Client.new(token)
      @processed_update_ids = []
      @update_time = update_time
    end

    def run(&block)
      loop do
        # Note: https://core.telegram.org/bots/api#getupdates
        # To mark an update as confirmed need to use offset+1
        offset = @processed_update_ids.last && @processed_update_ids.last + 1
        updates = @client.get_updates(offset: offset)

        updates.each do |update|
          next if @processed_update_ids.include?(update.update_id)
          process_update(update, block)
          @processed_update_ids << update.update_id
        end

        sleep(@update_time)
      end
    end

    private def process_update(update, block)
      block.call(client, update.message)
    end
  end
end
