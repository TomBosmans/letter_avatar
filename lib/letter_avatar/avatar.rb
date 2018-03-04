# frozen_string_literal: true

require 'securerandom'
require 'letter_avatar/configuration'

module LetterAvatar
  class Avatar
    def initialize(text)
      @canvas = color_for(text)
      @text = initials_for(text)
      @file_name = generate_file_name
    end

    def generate
      execute convert
    end

    private

    def execute(executable)
      system executable
    end

    def convert
      %W[
        convert
        -size '#{Configuration.size}'
        canvas:'#{@canvas}'
        -pointsize '#{Configuration.pointsize}'
        -fill '#{Configuration.fill}'
        -font '#{Configuration.font}'
        -gravity '#{Configuration.gravity}'
        -annotate '#{Configuration.annotate}'
        '#{@text}'
        -depth '#{Configuration.depth}'
        '#{@file_name}'
      ].join(' ')
    end

    def initials_for(text)
      words = text.split(' ')
      initials_array = []
      initials_array << words.first[0]
      initials_array << words.last[0] if words.count > 1
      initials_array.join('').upcase
    end

    def color_for(text)
      length = text.length
      max_length = Configuration.color_palette.length
      key = (length + max_length) % max_length
      Configuration.color_palette[key]
    end

    def generate_file_name
      "#{file_path}#{SecureRandom.hex}.#{Configuration.extension}"
    end

    def file_path
      path = Configuration.path
      path += '/' unless path.empty? || path[-1] == '/'
      path
    end
  end
end
