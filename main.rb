require './game'
require './player'
require './question'

game = Game.new()
p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
game.new_session(p1, p2)
# byebug

while (game.game_over != true)
  question = Question.new(rand(1...10), rand(1...10))
  puts "---- NEW TURN ----"
  current_player = game.player_turn()
  q = "#{current_player.name}: #{question.generate_question()}"
  puts q
  response = $stdin.gets.chomp.to_i
  
  if response == question.generate_answer()
    puts "YES! You are correct"
  else
    puts "Seriously? No!"
    current_player.remove_life()
  end

  if current_player.lives == 0
    game.game_over=true
  else
    puts "P1: #{p1.print_current_lives()} vs P2: #{p2.print_current_lives()}"
  end
  game.change_turn()

end

winner = game.player_turn()
puts "#{winner.name} wins with a score of #{winner.print_current_lives()}"
puts "---- GAME OVER ----"
puts "Good bye!"