require 'fernet/version'
require 'fernet/legacy/generator'
require 'fernet/legacy/verifier'
require 'fernet/legacy/secret'
require 'fernet/legacy/configuration'

if RUBY_VERSION == '1.8.7'
  require 'shim/base64'
end

Fernet::Legacy::Configuration.run

module Fernet::Legacy
  def self.generate(secret, encrypt = Configuration.encrypt, &block)
    Generator.new(secret, encrypt).generate(&block)
  end

  def self.verify(secret, token, encrypt = Configuration.encrypt, &block)
    Verifier.new(secret, encrypt).verify_token(token, &block)
  end

  def self.verifier(secret, token, encrypt = Configuration.encrypt)
    Verifier.new(secret, encrypt).tap do |v|
      v.verify_token(token)
    end
  end
end
