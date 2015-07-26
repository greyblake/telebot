# Telebot

Ruby client for [Telegram's Bot API](https://core.telegram.org/bots).

You can check working demo: http://telegram.me/demoTelebot

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'telebot'
```

Run

```
$ gem install telebot
```

## Usage

Minimal example, that repeats a message, would look like this:

```ruby
bot = Telebot::Bot.new(TOKEN)

bot.run do |client, message|
  reply = "You've said: #{message.text}"
  client.send_message(chat_id: message.chat.id, text: reply)
end
```

Please check out full featured example as well: [demo.rb](https://github.com/greyblake/telebot/blob/master/examples/demo.rb).


### Using pure client

```ruby
client = Telebot::Client.new(TOKEN)

# Perform getMe call
client.get_me
# =>
# #<Telebot::User:0x0000000111f688
#  @first_name="Telebot Demo",
#  @id=97445105,
#  @last_name=nil,
#  @username="demoTelebot">

# Send message to chat with id=12345
client.send_message(chat_id: 12345, text: "Hello there!")
```
The client supports all [Telegram's Bot API methods](https://core.telegram.org/bots/api#available-methods).

For more information check out [client.rb](https://github.com/greyblake/telebot/blob/master/lib/telebot/client.rb)
and [demo.rb](https://github.com/greyblake/telebot/blob/master/examples/demo.rb).


## Running demo

Clone the repo and run demo example to see how you can use [Telegram's Bot API](https://core.telegram.org/bots).

```ruby
git clone /github.com/greyblake/telebot
cd telebot
bundle install

TOKEN=<YOUR_TOKEN> ruby ./examples/demo.rb
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

