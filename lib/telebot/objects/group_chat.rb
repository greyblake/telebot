module Telebot
  # This object represents a group chat.
  class GroupChat
    include Virtus.model

    # Unique identifier for this group chat
    attribute :id, Integer

    # Group name
    attribute :title, String
  end
end
