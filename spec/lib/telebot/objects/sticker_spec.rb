require "spec_helper"

describe Telebot::Sticker do
  let(:sticker) { described_class.new }

  it "has attribute file_id (Integer)" do
    sticker.file_id = "888"
    expect(sticker.file_id).to eq 888
  end

  it "has attribute width (Integer)" do
    sticker.width = "540"
    expect(sticker.width).to eq 540
  end

  it "has attribute height (Integer)" do
    sticker.height = "640"
    expect(sticker.height).to eq 640
  end

  it "has attribute thumb (PhotoSize)" do
    sticker.thumb = { width: 100, height: 150 }

    expect(sticker.thumb).to be_a Telebot::PhotoSize
    expect(sticker.thumb.width).to eq 100
    expect(sticker.thumb.height).to eq 150
  end

  it "has attribute file_size (Integer)" do
    sticker.file_size = "12504"
    expect(sticker.file_size).to eq 12504
  end
end
