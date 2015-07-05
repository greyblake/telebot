require "spec_helper"

describe Telebot::Contact do
  let(:contact) { described_class.new }

  it "has attribute phone_number (String)" do
    contact.phone_number = :"146413"
    expect(contact.phone_number).to eq "146413"
  end

  it "has attribute first_name (String)" do
    contact.first_name = :Sergey
    expect(contact.first_name).to eq "Sergey"
  end

  it "has attribute last_name (String)" do
    contact.last_name = :Potapov
    expect(contact.last_name).to eq "Potapov"
  end

  it "has attribute user_id (String)" do
    contact.user_id = :xyz
    expect(contact.user_id).to eq "xyz"
  end
end
