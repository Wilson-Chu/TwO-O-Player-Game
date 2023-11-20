class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def lose_life
    @score -= 1
  end
end