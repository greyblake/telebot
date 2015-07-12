require_relative "../lib/telebot"
require 'pp'

def fixture(file_name)
  File.expand_path("../fixtures/#{file_name}", __FILE__)
end

token = ENV['TOKEN']
bot = Telebot::Bot.new(token)

bot.run do |client, message|
  puts "#{message.from.first_name}: #{message.text}"
  #pp message

  case message.text
  when /get_me/
    info = client.get_me
    client.send_message(chat_id: message.chat.id, text: info.inspect)
  when /send_message/
    client.send_message(chat_id: message.chat.id, text: "You said: #{message.text}")
  when /send_photo/
    file = Telebot::InputFile.new(fixture("bender_pic.jpg"), 'image/jpeg')
    client.send_photo(chat_id: message.chat.id, photo: file)
  when /forward_message/
    client.forward_message(chat_id: message.chat.id, from_chat_id: message.chat.id, message_id: message.message_id)
  when /send_audio/
    client.send_message(chat_id: message.chat.id, text: "Let me say 'Hi' in Esperanto.")
    file = Telebot::InputFile.new(fixture("saluton_amiko.ogg"))
    client.send_audio(chat_id: message.chat.id, audio: file)
  when /send_document/
    file = Telebot::InputFile.new(__FILE__)
    client.send_document(chat_id: message.chat.id, document: file)
  when /send_sticker/
    file = Telebot::InputFile.new(fixture("zamenhof_sticker.webp"))
    client.send_sticker(chat_id: message.chat.id, sticker: file)
  when /send_video/
    file_id = "BAADAgADOQADqwcsBcskdD5ZfXZyAg"
    client.send_video(chat_id: message.chat.id, video: file_id)
  when /send_location/
    client.send_location(chat_id: message.chat.id, latitude: 53.131684, longitude: 23.169556)
  when /send_chat_action/
    client.send_message(chat_id: message.chat.id, text: "Check my status, I am typing")
    client.send_chat_action(chat_id: message.chat.id, action: :typing)
    sleep 3
    client.send_message(chat_id: message.chat.id, text: "Done")
  else
    client.send_message(chat_id: message.chat.id, text: "Unknown command")
  end
end
