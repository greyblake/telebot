module Telebot
  # This object represents a sticker.
  class Sticker
    include Virtus.model

    # Unique identifier for this file
    attribute :file_id, Integer

    # Sticker width
    attribute :width, Integer

    # Sticker height
    attribute :height, Integer

    # Sticker thumbnail in .webp or .jpg format
    attribute :thumb, PhotoSize

    # Optional. File size
    attribute :file_size, Integer
  end
end
