class Player

  attr_reader :id
  attr_accessor :lives
  attr_accessor :points
  attr_accessor :turn
  attr_accessor :answer

  def initialize(id, lives=3, points=0, turn=false, answer=nil)
    @id = id
    @lives = lives
    @points = points
    @turn = turn
    @answer = answer
  end

  def lose_life
    @lives -= 1
  end

  def plus_one_point
    @points += 1
  end

  def change_turn
    turn = !turn
  end

end