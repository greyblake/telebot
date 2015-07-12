module Telebot
  # This object represent a user's profile pictures.
  class UserProfilePhotos
    include Virtus.model

    # Unique identifier for this user or bot
    attribute :total_count, Integer

    # Requested profile pictures (in up to 4 sizes each)
    attr_reader :photos

    # Assign Array of Array of PhotoSize
    #
    # @param values [Array<Array<PhotoSize>>]
    def photos=(values)
      @photos = values.map do |photo|
        photo.map do |photo_size_attrs|
          PhotoSize.new(photo_size_attrs)
        end
      end
    end
  end
end
