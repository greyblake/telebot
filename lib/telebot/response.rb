module Telebot
  class Response
    include Virtus.model

    # Whether is successful or failed
    attribute :ok, Boolean

    # Optional. Human-readable description of the result
    attribute :description, String

    # Result of request
    attr_accessor :result

    # An Integer ‘error_code’ field is also returned,
    # but its contents are subject to change in the future.
    attribute :error_code, Integer
  end
end
