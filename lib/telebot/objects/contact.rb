module Telebot
  # This object represents a phone contact.
  class Contact
    include Virtus.model

    # Contact's phone number
    attribute :phone_number, String

    # Contact's first name
    attribute :first_name, String

    # Optional. Contact's last name
    attribute :last_name, String

    # Optional. Contact's last name
    attribute :user_id, String
  end
end
