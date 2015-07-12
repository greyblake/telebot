module Telebot
  # Represents file that has to be sent.
  class InputFile < Faraday::UploadIO
    DEFAULT_MIME_TYPE = "application/octet-stream"

    # @param file_path [String]
    # @param mime_type [String]
    def initialize(file_path, mime_type = DEFAULT_MIME_TYPE)
      super(file_path, mime_type)
    end
  end
end
