require "spec_helper"

describe Telebot::GroupChat do
  let(:chat) { described_class.new }

  it "has attribute id (Integer)" do
    chat.id = "777"
    expect(chat.id).to eq 777
  end

  it "has attribute title (String)" do
    chat.title = :Amikoj
    expect(chat.title).to eq "Amikoj"
  end
end
