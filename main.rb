require './player'
require './question'

puts "Welcome to the TwO-O-Player Math Game!"
puts "2 players will start out with 3 lives each, and whoever gets to 0 first loses!"
puts "\n--- START! ---"
puts "\n"

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

current_player = player1

while player1.score > 0 && player2.score > 0
  new_question = Question.new

  puts "#{current_player.name}: #{new_question.question}"
  answer = gets.chomp.to_i

  if answer == new_question.answer
   puts "YES! You are correct."
  else
    puts "Seriously? No!"
    current_player.lose_life
  end

  puts "#{player1.name}: #{player1.score}/3 vs. #{player2.name}: #{player2.score}/3"
  
  if player1.score > 0 && player2.score > 0
    puts "----- NEW TURN -----"
  end

  # Switch between players each round
  current_player = current_player == player1 ? player2 : player1
end

puts "\n#{current_player.name} wins with a score of #{current_player.score}/3!"
puts "----- GAME OVER -----"
puts "Good bye!"