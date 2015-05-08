class Question

  attr_accessor :num_a
  attr_accessor :num_b
  attr_accessor :answer

  # def initialize(num_a=nil, num_b=nil, answer=nil)
  #   @num_a = num_a
  #   @num_b = num_b
  #   @answer = answer
  # end

  def random_number
    rand(1..20)
  end

  def generate
    @num_a = random_number
    @num_b = random_number
    @answer = @num_a + @num_b
  end
  
end
