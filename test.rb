# class Test
#   def methodtest(value)
#     if value == 1
#       puts 1
#     elsif value == 2
#       puts 2
#     else
#       puts "no"
#     end
#   end
# end

# x = 1
# y = 2
# z = 3

# testing = Test.new
# testing.methodtest(x)


class Test

  attr_accessor :number
  attr_accessor :number2
  attr_accessor :answer
  

  def methodtest
    @number = 22
    @number2 = 33
    @answer = @number + @number2
  end

end

a = Test.new
a.methodtest
puts a.number
puts a.number2
puts a.answer


# class Player

#   attr_reader :id
#   attr_accessor :lives
#   attr_accessor :points
#   attr_accessor :turn
#   attr_accessor :answer

#   def initialize(id)
#     @id = id
#     @lives = 3
#     @points = 
#     @turn = turn
#     @answer = answer
#   end

# end

# player1 = Player.new(1)
# player1.points = 1
# puts player1.points