require 'letter_avatar/version'
require 'letter_avatar/generator'

module LetterAvatar
  def self.configuration
    yield(Generator) if block_given?
  end
end
