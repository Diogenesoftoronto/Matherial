class Player
  @@epic_gamer = true
  @name = 'Anon'
  @score = 0
  @turn = false
  @results = [] 
  @response_to_question = {}
  @amount_of_questions = @results.length
  # may add wins, losses, and ties later.
  # may add difficulty later.
  def initialize(name)
    @name = name
  end
  
  attr_accessor :name, :score, :turn, :results
  
  def player_state
    if self.turn === true
      puts "Player: #{@name} Score: #{@score} Turn: #{@turn}"
    end
  end

  def add_to_results
    if self.results[0] !== {} 
      @results.push(@response_to_question)
    end
  end

  def calculate_score(time, correct_answers, amount_of_questions)
    @score = (amount_of_questions*correct_answers) - time
  end

end
