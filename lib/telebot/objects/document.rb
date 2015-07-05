module Telebot
  # This object represents a general file (as opposed to photos and audio files).
  class Document
    include Virtus.model

    # Unique file identifier
    attribute :file_id, String

    # Document thumbnail as defined by sender
    attribute :thumb, PhotoSize

    # Optional. Original filename as defined by sender
    attribute :file_name, String

    # Optional. MIME type of the file as defined by sender
    attribute :mime_type, String

    # Optional. File size
    attribute :file_size, Integer
  end
end
