module Telebot
  class Bot
    WAIT_UPDATE_TIME = 1

    attr_reader :client, :processed_update_ids

    def initialize(token)
      @client = Client.new(token)
      @processed_update_ids = [714636938]
    end

    def run(&block)
      while true
        #puts "POLLING..."

        updates = @client.get_updates(offset: @processed_update_ids.last)

        updates.each do |update|
          next if @processed_update_ids.include?(update.update_id)
          process_update(update, block)
          @processed_update_ids << update.update_id
        end

        sleep(WAIT_UPDATE_TIME)
      end
    end

    def process_update(update, block)
      #puts "Processing update #{update.update_id}"
      block.call(client, update.message)
    end
  end
end
