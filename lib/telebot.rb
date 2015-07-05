require 'faraday'
require 'virtus'

require_relative "telebot/objects/user"
require_relative "telebot/objects/group_chat"
require_relative "telebot/objects/photo_size"
require_relative "telebot/objects/audio"
require_relative "telebot/objects/contact"
require_relative "telebot/objects/location"
require_relative "telebot/objects/document"
require_relative "telebot/objects/sticker"
require_relative "telebot/objects/video"
require_relative "telebot/objects/message"

require_relative "telebot/version"
require_relative "telebot/client"


module Telebot
end


# Implemented objects:
# * User
# * GroupChat
# * PhotoSize
# * Audio
# * Contact
# * Location
# * Document
# * Sticker
# * Video
# * Message

# TODO:
# * Update
# * InputFile
# * UserProfilePhotos
# * ReplyKeyboardMarkup
# * ReplyKeyboardHide
# * ForceReply
