@question_count = 0

# using running total of questions to determine and return player turn
def player_turn
    (@question_count % 2) + 1
end

# generate random number between 1 and 200
def random_number
  rand(1..20)
end

# genrate 2 random numbers and determine total. return array with three values
def generate_question
  num_a = random_number
  num_b = random_number
  total = num_a + num_b
  array = [num_a, num_b, total]
end

# pass a question array and print to screen
def ui_ask_question(question)
  puts "#{question[0]} \+ #{question[1]}"
end

# pass player turn and print to screen
def ui_player_input(player)
  print "Player #{player}. answer? "
  gets.chomp
end

# pass question array and player answer return true if correct
def answer_correct?(question, player_answer)
  player_answer == question[2]
end


# def update_score(score)

# end

# def main
#   # initialize
#   score =[0,0]

#   5.times do | x |
#     question = generate_question
#     player = 1 + @question_count % 2
#     @question_count += 1
#     ui_ask_question(question)
#     answer = ui_player_input(player).to_i
#     if answer_correct?(question, answer)
#       puts 'YAY!!'
#       score[1] += 1
#     else
#       puts 'you suck'
#     end

#   end
# end

# main