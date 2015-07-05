require "spec_helper"

describe Telebot::PhotoSize do
  let(:photo_size) { described_class.new }

  it "has attribute file_id (Integer)" do
    photo_size.file_id = "888"
    expect(photo_size.file_id).to eq 888
  end

  it "has attribute width (Integer)" do
    photo_size.width = "450"
    expect(photo_size.width).to eq 450
  end

  it "has attribute height (Integer)" do
    photo_size.height = "300"
    expect(photo_size.height).to eq 300
  end

  it "has attribute file_size (Integer)" do
    photo_size.file_size = "1024"
    expect(photo_size.file_size).to eq 1024
  end
end
