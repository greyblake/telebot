require "spec_helper"

describe Telebot::Video do
  let(:video) { described_class.new }

  it "has attribute file_id (Integer)" do
    video.file_id = "888"
    expect(video.file_id).to eq 888
  end

  it "has attribute height (Integer)" do
    video.height = "300"
    expect(video.height).to eq 300
  end

  it "has attribute file_size (Integer)" do
    video.file_size = "1024"
    expect(video.file_size).to eq 1024
  end

  it "has attribute duration (Integer)" do
    video.file_size = "63"
    expect(video.file_size).to eq 63
  end

  it "has attribute thumb (PhotoSize)" do
    video.thumb = { width: 80, height: 120, file_id: "abc123" }

    expect(video.thumb).to be_a Telebot::PhotoSize
    expect(video.thumb.width).to eq 80
    expect(video.thumb.height).to eq 120
    expect(video.thumb.file_id).to eq "abc123"
  end

  it "has attribute mime_type (String)" do
    video.mime_type = "video/x-mpeg"
    expect(video.mime_type).to eq "video/x-mpeg"
  end

  it "has attribute file_size (Integer)" do
    video.file_size = "128"
    expect(video.file_size).to eq 128
  end

  it "has attribute caption (String)" do
    video.caption = "CAPTION"
    expect(video.caption).to eq "CAPTION"
  end
end
