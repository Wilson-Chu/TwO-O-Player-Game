=begin
EXAMPLE PROMPT:
  Player 1: What does 5 plus 3 equal? (puts)
  (gets.chomp) > 9
  Player 1: Seriously? No!
  P1: 2/3 vs P2: 3/3
  ----- NEW TURN -----
  Player 2: What does 2 plus 6 equal?
  (gets.chomp) > 8
  Player 2: YES! You are correct.
  P1: 2/3 vs P2: 3/3
  ----- NEW TURN -----
  ... first player to get to 0/3 loses, other player wins ...
  Player 1 wins with a score of 1/3
  ----- GAME OVER -----
=end

require './question'
