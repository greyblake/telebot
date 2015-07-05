module Telebot
  # This object represents a point on the map.
  class Location
    include Virtus.model

    # Longitude as defined by sender
    attribute :longitude, Float

    # Latitude as defined by sender
    attribute :latitude, Float
  end
end
