require 'virtus'
require 'faraday'
require 'faraday_middleware'

require "telebot/objects/user"
require "telebot/objects/group_chat"
require "telebot/objects/photo_size"
require "telebot/objects/audio"
require "telebot/objects/contact"
require "telebot/objects/location"
require "telebot/objects/document"
require "telebot/objects/sticker"
require "telebot/objects/video"
require "telebot/objects/message"
require "telebot/objects/update"
require "telebot/objects/input_file"
require "telebot/objects/user_profile_photos"
require "telebot/objects/reply_keyboard_markup"

require "telebot/version"
require "telebot/client"
require "telebot/response"
require "telebot/bot"
require "telebot/errors"


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
# * UserProfilePhotos
# * ReplyKeyboardMarkup

# TODO:
# * ReplyKeyboardHide
# * ForceReply
