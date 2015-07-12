require 'virtus'
require 'faraday'
require 'faraday_middleware'

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
require_relative "telebot/objects/update"
require_relative "telebot/objects/input_file"

require_relative "telebot/version"
require_relative "telebot/client"
require_relative "telebot/response"
require_relative "telebot/bot"


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
# * Update
# * InputFile

# TODO:
# * UserProfilePhotos
# * ReplyKeyboardMarkup
# * ReplyKeyboardHide
# * ForceReply
