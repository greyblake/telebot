module Telebot
  # This object represents a video file.
  class Video
    include Virtus.model

    # Unique identifier for this file
    attribute :file_id, Integer

    # Video width as defined by sender
    attribute :width, Integer

    # Video height as defined by sender
    attribute :height, Integer

    # Duration of the video in seconds as defined by sender
    attribute :duration, Integer

    # Video thumbnail
    attribute :thumb, PhotoSize

    # Optional. Mime type of a file as defined by sender
    attribute :mime_type, String

    # Optional. File size
    attribute :file_size, Integer

    # Optional. Text description of the video (usually empty)
    attribute :caption, String
  end
end
