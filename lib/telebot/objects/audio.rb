module Telebot
  # This object represents an audio file (voice note).
  class Audio
    include Virtus.model

    # Unique identifier for this file
    attribute :file_id, Integer

    # Duration of the audio in seconds as defined by sender
    attribute :duration, Integer

    # Optional. MIME type of the file as defined by sender
    attribute :mime_type, String

    # Optional. File size
    attribute :file_size, Integer
  end
end
