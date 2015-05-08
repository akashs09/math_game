def player_input
  print 'answer? '
  gets.chomp
end

def random_number
  rand(1..20)
end

def generate_question
  num_a = random_number
  num_b = random_number
  total = num_a + num_b
  array = [num_a, num_b, total]
end

def ask_question(question)
  puts "#{question[0]} \+ #{question[1]}"
end

def answer_correct?(question, answer)
  answer == question[2]
end


def main
  question = generate_question
  ask_question(question)
  answer = player_input.to_i
  if answer_correct?(question, answer)
    puts 'YAY!!'
  else
    puts 'you suck'
  end

  player_one = 0
  player_two = 0

end

main