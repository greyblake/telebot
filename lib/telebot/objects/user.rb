module Telebot
  # This object represents a Telegram user or bot.
  class User
    include Virtus.model

    # Unique identifier for this user or bot
    attribute :id, Integer

    # User‘s or bot’s first name
    attribute :first_name, String

    # Optional. User‘s or bot’s last name
    attribute :last_name, String

    # Optional. User‘s or bot’s username
    attribute :username, String
  end
end
