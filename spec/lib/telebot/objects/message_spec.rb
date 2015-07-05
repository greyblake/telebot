require "spec_helper"

describe Telebot::Message do
  let(:message) { described_class.new }

  it "has attribute message_id (Integer)" do
    message.message_id = "131314"
    expect(message.message_id).to eq 131314
  end

  it "has attribute from (User)" do
    message.from = { id: 145, first_name: "Julia" }

    expect(message.from).to be_a Telebot::User
    expect(message.from.id).to eq 145
    expect(message.from.first_name).to eq "Julia"
  end

  it "has attribute date (Integer)" do
    message.date = "19191"
    expect(message.date).to eq 19191
  end

  it "has attribute chat (User)" do
    message.chat = { id: 145, first_name: "Julia" }

    expect(message.chat).to be_a Telebot::User
    expect(message.chat.id).to eq 145
    expect(message.chat.first_name).to eq "Julia"
  end

  it "has attribute forward_from (User)" do
    message.forward_from = { first_name: "Julia" }

    expect(message.forward_from).to be_a Telebot::User
    expect(message.forward_from.first_name).to eq "Julia"
  end

  it "has attribute forward_date (Integer)" do
    message.forward_date = "19192"
    expect(message.forward_date).to eq 19192
  end

  it "has attribute reply_to_message (Message)" do
    message.reply_to_message = {}
    expect(message.reply_to_message).to be_a Telebot::Message
  end

  it "has attribute text (String)" do
    message.text = "Saluton, amigo!"
    expect(message.text).to eq "Saluton, amigo!"
  end

  it "has attribute audio (Audio)" do
    message.audio = {}
    expect(message.audio).to be_a Telebot::Audio
  end

  it "has attribute document (Document)" do
    message.document = {}
    expect(message.document).to be_a Telebot::Document
  end

  it "has attribute photo (array of PhotoSize)" do
    message.photo = [
      { width: 10 , height: 20  },
      { width: 100, height: 200 },
    ]
    expect(message.photo).to be_a Array
    expect(message.photo.first).to be_a Telebot::PhotoSize
    expect(message.photo.first.width).to eq 10
    expect(message.photo.last.height).to eq 200
  end

  it "has attribute sticker (Sticker)" do
    message.sticker = {}
    expect(message.sticker).to be_a Telebot::Sticker
  end

  it "has attribute video (Video)" do
    message.video = {}
    expect(message.video).to be_a Telebot::Video
  end

  it "has attribute contact (Contact)" do
    message.contact = {}
    expect(message.contact).to be_a Telebot::Contact
  end

  it "has attribute location (Location)" do
    message.location = {}
    expect(message.location).to be_a Telebot::Location
  end

  it "has attribute new_chat_participant (User)" do
    message.new_chat_participant = {}
    expect(message.new_chat_participant).to be_a Telebot::User
  end

  it "has attribute new_chat_title (String)" do
    message.new_chat_title = "Ardo"
    expect(message.new_chat_title).to eq "Ardo"
  end

  it "has attribute new_chat_photo (array of PhotoSize)" do
    message.new_chat_photo = [
      { width: 20 , height: 40  },
      { width: 100, height: 200 },
    ]

    photos = message.new_chat_photo
    expect(photos).to be_a Array
    expect(photos.first).to be_a Telebot::PhotoSize
    expect(photos.first.width).to eq 20
    expect(photos.last.height).to eq 200
  end

  it "has attribute delete_chat_photo (Boolean)" do
    message.delete_chat_photo = "false"
    expect(message.delete_chat_photo).to eq false
  end

  it "has attribute group_chat_created (Boolean)" do
    message.group_chat_created = "true"
    expect(message.group_chat_created).to eq true
  end
end
