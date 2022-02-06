class QuestionGenerator
  attr_accessor :difficulty, :question_amount, :questions
  def initialize
    @questions = []
  end
  def set_difficulty(difficulty)
    @difficulty = difficulty
    case difficulty
    when "e"
      @question_amount = 10
    when "m"
      @question_amount = 20
    when "h"
      @question_amount = 30
    end
  end
  def set_question_amount(question_amount)
    @question_amount = question_amount
  end
  def generate_question
    case @difficulty
    when "e"
      generate_easy_question
    when "m"
      generate_medium_question
    when "h"
      generate_hard_question
    end
  end
  def generate_easy_question
    question = {}
    question[:question] = rand(1..10) + " + " + rand(1..10).to_s
    question[:answer] = question[:question].split(" ")[0].to_i + question[:question].split(" ")[2].to_i
    @questions.push(question)
    question
  end
  def generate_medium_question
    question = {}
    question[:question] = rand(1..20) + " + " + rand(1..20).to_s
    question[:answer] = question[:question].split(" ")[0].to_i + question[:question].split(" ")[2].to_i
    @questions.push(question)
    question
  end
  def generate_hard_question
    question = {}
    question[:question] = rand(1..30) + " + " + rand(1..30).to_s
    question[:answer] = question[:question].split(" ")[0].to_i + question[:question].split(" ")[2].to_i
    @questions.push(question)
    question
  end
end