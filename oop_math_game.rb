require_relative 'player' 
require_relative 'question'


class Interface

  def ask_question(player, question)
    puts "Player #{player.id}: #{question.num_a} + #{question.num_b} = ???"
  end

  def user_input(player)
    print "Enter your answer: "
    player.answer = gets.chomp
  end

  def output_result(result)
    puts result ? 'Correct!' : 'Incorrect! =('
  end

  def output_points(player)
    puts "Player #{player.id} has #{player.points} points. and #{player.lives} lives"
  end

  def end_game_message(player)
    "Player #{player.id} has won the game."
  end

end

class Game_Mechanics

  def check_answer(question, answer)
    question == answer
  end

  # def question
  #   question.generate
  #   interface.ask_question()
  # end

end

player1 = Player.new(1)
player2 = Player.new(2)
question = Question.new
interface = Interface.new
game = Game_Mechanics.new



interface.ask_question(player1, question)
interface.user_input(player1)
game.check_answer(question, player1.answer)



# game = Game.new
# game.start




# def main
#   start
#   question = generate_question
#   ui_ask_question(question)
#   player1.answer = ui_player_input
# end


# # using running total of questions to determine and return player turn
# def player_turn
#     (@question_count % 2) + 1
# end

# # pass question array and player answer return true if correct
# def answer_correct?(question, player_answer)
#   player_answer == question[2]
# end

# # print current score
# def ui_print_score
#   puts "Player 1 has #{@score[0]} lives. Player 2 has #{@score[1]} lives."
# end

# # print game over message with winner
# def ui_print_end_game(score)
#   puts "Game is over."
#   loser = score.index(0) + 1
#   loser == 1 ? winner = 2 : winner = 1
#   puts "Player #{winner} has won the game."
# end

# # main program
# def main
#   until @score.include?(0)
#     turn = player_turn
#     question = generate_question
#     ui_ask_question(question)
#     player_answer = ui_player_input(turn)
#     result = answer_correct?(question, player_answer)
#     ui_print_result(result)
#     unless result
#       update_score(turn)
#       ui_print_score
#     end
#   end
#   ui_print_end_game(@score)
# end

# main