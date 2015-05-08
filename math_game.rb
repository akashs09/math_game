@question_count = 0
@score = [3,3]

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
  @question_count += 1
  num_a = random_number
  num_b = random_number
  total = num_a + num_b
  array = [num_a, num_b, total]
end

# pass question array and player answer return true if correct
def answer_correct?(question, player_answer)
  player_answer == question[2]
end

# pass player turn and update score by -1
def update_score(turn)
  @score[turn - 1] -= 1
end
# pass a question array and print to screen
def ui_ask_question(question)
  puts "#{question[0]} \+ #{question[1]}"
end

# pass player turn and print to screen
def ui_player_input(player)
  print "Player #{player}. answer? "
  gets.chomp.to_i
end

# pass boolean result of answer right or wrong and print correct or incorrect
def ui_print_result(result)
  puts result ? 'Correct!' : 'Incorrect =('
end

# print current score
def ui_print_score
  puts "Player 1 has #{@score[0]} lives. Player 2 has #{@score[1]} lives."
end

def ui_print_end_game(score)
  puts "Game is over."
  loser = score.index(0) + 1
  loser == 1 ? winner = 2 : winner = 1
  puts "Player #{winner} has won the game."
end

# main program
def main
  until @score.include?(0)
    turn = player_turn
    question = generate_question
    ui_ask_question(question)
    answer = ui_player_input(turn)
    ui_print_result(answer_correct?(question, answer))
    if !answer_correct?(question, answer)
      update_score(turn)
      ui_print_score
    end
  end
  ui_print_end_game(@score)
end

main