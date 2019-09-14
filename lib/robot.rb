# frozen_string_literal: true

class Robot
  attr_reader :position_x, :position_y, :facing

  def initialize(x = 0, y = 0, f = 'N')
    @position_x = x
    @position_y = y
    @facing = f
  end

  def move
    case @facing
    when 'N'
      @position_y += 1
    when 'S'
      @position_y -= 1
    when 'W'
      @position_x -= 1
    when 'E'
      @position_x += 1
    end
  end

  def left
    case @facing
    when 'N'
      @facing = 'W'
    when 'W'
      @facing = 'S'
    when 'S'
      @facing = 'E'
    when 'E'
      @facing = 'N'
    end
  end

  def right
    case @facing
    when 'N'
      @facing = 'E'
    when 'W'
      @facing = 'N'
    when 'S'
      @facing = 'W'
    when 'E'
      @facing = 'S'
    end
  end

  def report
    "The position x is #{@position_x}, position y is #{@position_y} and the facing is #{facing}."
  end
end
