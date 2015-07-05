require "spec_helper"

describe Telebot::Document do
  let(:document) { described_class.new }

  it "has attribute file_id (String)" do
    document.file_id = :abcd
    expect(document.file_id).to eq "abcd"
  end

  it "has attribute thumb (PhotoSize)" do
    document.thumb = { width: 80, height: 120 }

    expect(document.thumb).to be_a Telebot::PhotoSize
    expect(document.thumb.width).to eq 80
    expect(document.thumb.height).to eq 120
  end

  it "has attribute file_name (String)" do
    document.file_name = "espero.jpg"
    expect(document.file_name).to eq "espero.jpg"
  end

  it "has attribute mime_type (String)" do
    document.mime_type = "image/jpeg"
    expect(document.mime_type).to eq "image/jpeg"
  end

  it "has attribute file_size (Integer)" do
    document.file_size = "128"
    expect(document.file_size).to eq 128
  end
end
