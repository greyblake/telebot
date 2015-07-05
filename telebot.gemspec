# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'telebot/version'

Gem::Specification.new do |spec|
  spec.name          = "telebot"
  spec.version       = Telebot::VERSION
  spec.authors       = ["Potapov Sergey"]
  spec.email         = ["blake131313@gmail.com"]

  spec.summary       = "Ruby client for Telegram bot API"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/greyblake/telebot"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "virtus"

  spec.add_development_dependency "bundler", "~> 1.1"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
