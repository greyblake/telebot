require "spec_helper"

describe Telebot::Update do
  let(:update) { described_class.new }

  it "has attribute update_id (Integer)" do
    update.update_id = "917"
    expect(update.update_id).to eq 917
  end

  it "has attribute message (Message)" do
    update.message = {}
    expect(update.message).to be_a Telebot::Message
  end
end
