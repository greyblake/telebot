require "spec_helper"

describe Telebot::Client do
  describe ".new" do
    it "raises if token is not present" do
      expect { described_class.new(nil) }.to raise_error(ArgumentError)
      expect { described_class.new("") }.to raise_error(ArgumentError)

      expect { described_class.new("token") }.not_to raise_error(ArgumentError)
    end
  end
end
