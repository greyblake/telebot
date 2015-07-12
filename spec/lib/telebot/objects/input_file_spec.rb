require 'spec_helper'

describe Telebot::InputFile do
  it "inherits from Faraday::UploadIO" do
    expect(described_class.superclass).to eq Faraday::UploadIO
  end

  it "sets default mime_type" do
    input_file = described_class.new(__FILE__)
    expect(input_file.local_path).to eq __FILE__
    expect(input_file.content_type).to eq "application/octet-stream"
  end
end
