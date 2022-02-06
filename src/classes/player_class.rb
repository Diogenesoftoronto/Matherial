class Player
  @@gamer = true
  @name = 'Anon'
  @score = 0
  @turn = false
  # may add wins, losses, and ties later.
  # may add difficulty later.
  def initialize(name)
    @name = name
  end
  attr_accessor :name, :score, :turn
  def player_state
    puts "Player: #{@@name} Score: #{@@score} Turn: #{@@turn}"
  end
  def calculate_score(time, correct_answers, amount_of_questions)
    @@score = (amount_of_questions*correct_answers) - time
  end
end