$game = true; 
$difficulty = "e";
# the game starts with a simple welcome message and a description of the game.
puts "Welcome to the Matherial. You will be asked math questions. If you get the answer right in shortest time then you win the round. If you get it wrong then the next player gets a chance to answer. If you wish to stop the game, simply type quit at any time! But First, what difficulty would you like to play? Easy(e), Medium(m), or Hard(h)?"
# the difficulty is set to easy by default.
if ($key == 'quit')
  $game = false
end
# the game will continue until the player types quit.
$key = gets.chomp 
# the player types in their answer.
