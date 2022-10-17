class Player

  attr_accessor :lives, :id

  def initialize(id)
    @id = id
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end

