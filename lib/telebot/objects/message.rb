module Telebot
  # This object represents a message.
  class Message
    include Virtus.model

    # Unique message identifier
    attribute :message_id, Integer

    # Sender
    attribute :from, User

    # Date the message was sent in Unix time
    #
    # TODO: should be Time instead?
    attribute :date, Integer

    # Conversation the message belongs to — user in case of a private message, GroupChat in case of a group
    # TODO:
    #   Handle GroupChat as well.
    #   How to distinguish them?
    attribute :chat, User

    # Optional. For forwarded messages, sender of the original message
    attribute :forward_from, User

    # Optional. For forwarded messages, date the original message was sent in Unix time
    #
    # TODO: should be Time instead?
    attribute :forward_date, Integer

    # Optional. For replies, the original message. Note that the Message object in this field will not contain further reply_to_message fields even if it itself is a reply.
    attribute :reply_to_message, Message

    # Optional. For text messages, the actual UTF-8 text of the message
    attribute :text, String

    # Optional. Message is an audio file, information about the file
    attribute :audio, Audio

    # Optional. Message is a general file, information about the file
    attribute :document, Document

    # Optional. Message is a photo, available sizes of the photo
    attribute :photo, [PhotoSize]

    # Optional. Message is a sticker, information about the sticker
    attribute :sticker, Sticker

    # Optional. Message is a video, information about the video
    attribute :video, Video

    # Optional. Message is a shared contact, information about the contact
    attribute :contact, Contact

    # Optional. Message is a shared location, information about the location
    attribute :location, Location

    # Optional. A new member was added to the group, information about them (this member may be bot itself)
    attribute :new_chat_participant, User

    # Optional. A member was removed from the group, information about them (this member may be bot itself)
    attribute :left_chat_participant, User

    # Optional. A group title was changed to this value
    attribute :new_chat_title, String

    # Optional. A group photo was change to this value
    attribute :new_chat_photo, [PhotoSize]

    # Optional. Informs that the group photo was deleted
    attribute :delete_chat_photo, Boolean

    # Optional. Informs that the group has been created
    attribute :group_chat_created, Boolean
  end
end
