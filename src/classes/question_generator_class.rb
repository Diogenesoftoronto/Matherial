require "./easy_questions_generator"
require "./medium_questions_generator"
require "./hard_questions_generator"

module Questioner
  class QuestionGenerator
    include EASY
    include MEDIUM
    include HARD
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
      question = easy_question_generator()
      @questions.push(question)
      question
    end
    def generate_medium_question
      question = {}
      question = medium_question_generator()
      @questions.push(question)
      question
    end
    def generate_hard_question
      question = {}
      question = hard_question_generator()
      @questions.push(question)
      question
    end
  end
end