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
    end
  end
end
