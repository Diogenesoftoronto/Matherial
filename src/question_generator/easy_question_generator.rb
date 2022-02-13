module EASY
  def easy_question_generator
    # Generates a random number between 1 and 50
    num1 = rand(1..50)
    # Generates a random number between 1 and 50
    num2 = rand(1..12)
    # Generates a random operator
    operator_num = rand(1..3)
    operator_hash = {1 => :+, 2 => :-, 3 => :*}
    operator = operator_hash[operator_num]
    question = "#{num1}#{operator}#{num2}"
    answer = eval(question)
    result = {question: question, answer: answer}
  end
end
