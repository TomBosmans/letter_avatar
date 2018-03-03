require 'letter_avatar/version'
require 'letter_avatar/avatar'

module LetterAvatar
  def self.configuration
    yield(Configuration) if block_given?
  end
end
