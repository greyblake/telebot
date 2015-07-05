require "spec_helper"

describe Telebot::Audio do
  let(:audio) { described_class.new }

  it "has attribute file_id (Integer)" do
    audio.file_id = "888"
    expect(audio.file_id).to eq 888
  end

  it "has attribute duration (Integer)" do
    audio.duration = "120"
    expect(audio.duration).to eq 120
  end

  it "has attribute mime_type (Integer)" do
    audio.mime_type = :"audio/mpeg3"
    expect(audio.mime_type).to eq "audio/mpeg3"
  end

  it "has attribute file_size (Integer)" do
    audio.file_size = "2048"
    expect(audio.file_size).to eq 2048
  end
end
