require "spec_helper"

describe Telebot::UserProfilePhotos do
  let(:photos) { described_class.new }

  it "has attribute total_count (Integer)" do
    photos.total_count = "3"
    expect(photos.total_count).to eq 3
  end

  it "has attribute photos (Array of Array of PhotoSize)" do
    photos.photos = [
      [ { width: 10, height: 15 }, { width: 20, height: 30 } ],
      [ { width: 50, height: 150 }, { width: 100, height: 300 } ]
    ]
    avatar1 = photos.photos[0]
    avatar2 = photos.photos[1]

    expect(avatar1[0]).to be_a Telebot::PhotoSize
    expect(avatar1[0].width).to eq 10
    expect(avatar1[0].height).to eq 15
    expect(avatar1[1].width).to eq 20
    expect(avatar1[1].height).to eq 30

    expect(avatar2[0]).to be_a Telebot::PhotoSize
    expect(avatar2[0].width).to eq 50
    expect(avatar2[0].height).to eq 150
    expect(avatar2[1].width).to eq 100
    expect(avatar2[1].height).to eq 300
  end
end
