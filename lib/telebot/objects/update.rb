module Telebot
  # This object represents an incoming update.
  class Update
    include Virtus.model

    # The update‘s unique identifier. Update identifiers start from a certain
    # positive number and increase sequentially. This ID becomes especially
    # handy if you’re using Webhooks, since it allows you to ignore repeated
    # updates or to restore the correct update sequence, should they get out
    # of order.
    attribute :update_id, Integer

    # Optional.
    # New incoming message of any kind — text, photo, sticker, etc.
    attribute :message, Message
  end
end
