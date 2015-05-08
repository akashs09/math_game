def player_input(player)
  print "Player #{player}. answer? "
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

def update_score(score)

end

def main
  # initialize
  score =[0,0]
  @question_count = 0

  5.times do | x |
    question = generate_question
    player = 1 + question_count % 2
    question_count += 1
    ask_question(question)
    answer = player_input(player).to_i
    if answer_correct?(question, answer)
      puts 'YAY!!'
      score[1] += 1
    else
      puts 'you suck'
    end

  end
end

main