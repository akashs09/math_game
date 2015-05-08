class Test
  def methodtest(value)
    if value == 1
      puts 1
    elsif value == 2
      puts 2
    else
      puts "no"
    end
  end
end

x = 1
y = 2
z = 3

testing = Test.new
testing.methodtest(x)