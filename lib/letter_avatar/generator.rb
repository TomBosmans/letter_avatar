# frozen_string_literal: true

require 'securerandom'
require 'letter_avatar/configuration'

module LetterAvatar
  class Generator
    extend Configuration

    def initialize(text, optional = {})
      color_palette = optional[:color_palette] || self.class.color_palette
      extension = optional[:extension] || self.class.extension

      @annotate = optional[:annotate] || self.class.annotate
      @fill = optional[:fill] || self.class.fill
      @font = optional[:font] || self.class.font
      @gravity = optional[:gravity] || self.class.gravity
      @size = optional[:size] || self.class.size
      @pointsize = optional[:pointsize] || self.class.pointsize
      @depth = optional[:depth] || self.class.depth

      @canvas = color_for(text, color_palette)
      @text = initials_for(text)
      @file_name = generate_file_name(extension)
    end

    def generate
      execute convert
    end

    private

    def convert
      "convert -size '#{@size}' canvas:'#{@canvas}' -pointsize '#{@pointsize}' \
    -fill '#{@fill}' -font '#{@font}' -gravity '#{@gravity}' \
    -annotate '#{@annotate}' '#{@text}' -depth '#{@depth}' '#{@file_name}'"
    end

    def initials_for(text)
      words = text.split(' ')
      initials_array = []
      initials_array << words.first[0]
      initials_array << words.last[0] if words.count > 1
      initials_array.join('').upcase
    end

    def color_for(text, color_palette)
      length = text.length
      max_length = color_palette.length
      key = (length + max_length) % max_length
      background_colors[key]
    end

    def generate_file_name(extension)
      "#{SecureRandom.hex}.#{extension}"
    end
  end
end
