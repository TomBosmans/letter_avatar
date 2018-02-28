# frozen_string_literal: true

module Configuration
  DEFAULT_COLOR_PALETTE = [
    '#F44336', '#E91E63', '#E91E63', '#E91E63', '#E91E63', '#E91E63', '#03A9F4',
    '#03A9F4', '#03A9F4', '#4CAF50', '#4CAF50', '#4CAF50', '#FFEB3B', '#FFC107',
    '#FF9800', '#FF5722'
  ].freeze

  def size
    @size ||= '1000x1000'
  end

  def size=(value)
    @size = value
  end

  def pointsize
    @pointsize ||= 540
  end

  def pointsize=(value)
    @pointsize = value
  end

  def font
    @font ||= 'Helvetica'
  end

  def font=(value)
    @font = value
  end

  def gravity
    @gravity ||= 'Center'
  end

  def gravity=(value)
    @gravity = value
  end

  def annotate
    @annotate ||= '-0+80'
  end

  def annotate=(value)
    @annotate = value
  end

  def depth
    @depth ||= 8
  end

  def depth=(value)
    @depth = value
  end

  def extension
    @extension ||= 'jpg'
  end

  def extension=(value)
    @extension = value
  end

  def color_palette
    @color_palette ||= DEFAULT_COLOR_PALETTE
  end

  def color_palette=(value)
    @color_palette = value
  end

  def fill
    @fill ||= '#FFFFFFCC'
  end

  def fill=(value)
    @fill = value
  end
end
