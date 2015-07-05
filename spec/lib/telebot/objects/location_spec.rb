require "spec_helper"

describe Telebot::Location do
  let(:location) { described_class.new }

  it "has attribute longitude (Float)" do
    location.longitude = "160.57"
    expect(location.longitude).to eq 160.57
  end

  it "has attribute latitude (Integer)" do
    location.latitude = "-135.121"
    expect(location.latitude).to eq -135.121
  end
end
