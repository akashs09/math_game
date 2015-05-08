Class Player

  attr_accessor :name
  attr_accessor :lives
  attr_accessor :score

  initialize(name, lives=3, score=0, turn=false)
    @name = name
    @lives = lives
    @score = score
    @turn = turn
  end

  def lose_life
    @lives -= 1
  end

  def point_score
    @score += 1
  end

end