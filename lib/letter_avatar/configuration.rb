# frozen_string_literal: true

module LetterAvatar
  module Configuration
    DEFAULT_COLOR_PALETTE = [
      '#F44336', '#E91E63', '#9C27B0', '#673AB7', '#3F51B5', '#2196F3', '#03A9F4',
      '#00BCD4', '#009688', '#4CAF50', '#8BC34A', '#CDDC39', '#FFEB3B', '#FFC107',
      '#FF9800', '#FF5722'
    ].freeze

    def self.root
      File.dirname __dir__
    end

    def self.size
      @size ||= '1000x1000'
    end

    def self.size=(value)
      @size = value
    end

    def self.pointsize
      @pointsize ||= 540
    end

    def self.pointsize=(value)
      @pointsize = value
    end

    def self.font
      @font ||= File.join(root, '/assets/fonts/Roboto-Medium.ttf')
    end

    def self.font=(value)
      @font = value
    end

    def self.gravity
      @gravity ||= 'Center'
    end

    def self.gravity=(value)
      @gravity = value
    end

    def self.annotate
      @annotate ||= '-0+80'
    end

    def self.annotate=(value)
      @annotate = value
    end

    def self.depth
      @depth ||= 8
    end

    def self.depth=(value)
      @depth = value
    end

    def self.extension
      @extension ||= 'jpg'
    end

    def self.extension=(value)
      @extension = value
    end

    def self.color_palette
      @color_palette ||= DEFAULT_COLOR_PALETTE
    end

    def self.color_palette=(value)
      @color_palette = value
    end

    def self.fill
      @fill ||= '#FFFFCC'
    end

    def self.fill=(value)
      @fill = value
    end

    def self.path
      @path ||= ''
    end

    def self.path=(value)
      @path = value
    end
  end
end
