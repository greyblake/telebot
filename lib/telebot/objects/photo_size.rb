module Telebot
  # This object represents one size of a photo or a file / sticker thumbnail.
  # A missing thumbnail for a file (or sticker) is presented as an empty object.
  class PhotoSize
    include Virtus.model

    # Unique identifier for this file
    attribute :file_id, Integer

    # Photo width
    attribute :width, Integer

    # Photo height
    attribute :height, Integer

    # Optional. File size
    attribute :file_size, Integer
  end
end
