module Telebot
  class ReplyKeyboardMarkup
    include Virtus.model

    # Array of button rows, each represented by an Array of Strings.
    #
    attribute :keyboard

    # @return [String] json that repsents keyboard markup
    def to_json
      to_hash.to_json
    end
  end
end
