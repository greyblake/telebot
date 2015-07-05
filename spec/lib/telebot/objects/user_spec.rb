require "spec_helper"

describe Telebot::User do
  let(:user) { described_class.new }

  it "has attribute id (Integer)" do
    user.id = "1313"
    expect(user.id).to eq 1313
  end

  it "has attribute first_name (String)" do
    user.first_name = :Sergey
    expect(user.first_name).to eq "Sergey"
  end

  it "has attribute last_name (String)" do
    user.last_name = :Potapov
    expect(user.last_name).to eq "Potapov"
  end

  it "has attribute username (String)" do
    user.username = :greyblake
    expect(user.username).to eq "greyblake"
  end
end
