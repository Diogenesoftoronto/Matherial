class Game
  @players = []
  @gaming = true
  @difficulty = "e"
  @round = 1
  @question_amount = 10
  @question_generator = QuestionGenerator.new
  @question_generator.set_difficulty(@difficulty)
  @question_generator.set_question_amount(@question_amount)
  def initialize(players)
    @players = players
  end
  def set_difficulty(difficulty)
    @difficulty = difficulty
    @question_generator.set_difficulty(difficulty)
  end
  def set_question_amount(question_amount)
    @question_amount = question_amount
    @question_generator.set_question_amount(question_amount)
  end
  def start_game
    puts "Welcome to the Matherial. You will be asked math questions. If you get the answer right in shortest time then you win the round. If you get it wrong then the next player gets a chance to answer. If you wish to stop the game, simply type quit at any time! But First, what difficulty would you like to play? Easy(e), Medium(m), or Hard(h)?"
    if ($key == 'quit')
      @gaming = false
    end
    $key = gets.chomp 
    if (@gaming)
      # the game will continue until the player types quit.
      @round = 1
      @players.each do |player|
        player.reset_score
      end
      while (@gaming)
        # the player types in their answer.
        @players.each do |player|
          if (player.get_score == @question_amount)
            @gaming = false
            break
          end
          question = @question_generator.generate_question
          puts question[:question]
          answer = gets.chomp
          if (answer == question[:answer])
            player.increment_score
            puts "Correct! Your score is #{player.get_score}."
          else
            puts "Incorrect! The correct answer is #{question[:answer]}."
            puts "Your score is #{player.get_score}."
          end
        end
        @round += 1
      end
    end
    puts "Thanks for playing!"
  end
  def save_game(filename)
    File.open(filename, 'w') do |f|
      f.puts @difficulty
      f.puts @question_amount
      f.puts @players.length
      @players.each do |player|
        f.puts player.get_name
        f.puts player.get_score
        f.puts player.get_turn
      end
    end
  end