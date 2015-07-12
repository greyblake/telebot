module Telebot
  class Error < StandardError
    attr_reader :error_code

    def initiliaze(message, error_code = nil)
      super(message)
      @error_code = error_code
    end
  end
end
