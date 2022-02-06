def easy_question_generator()
  # Generates a random number between 1 and 50
  num1 = rand(1..250)
  # Generates a random number between 1 and 50
  num2 = rand(1..25)
  # Generates a random operator
  num3 = rand(1..10)
  operator_num = rand(1..6)
  operator_hash = {1 => :+, 2 => :-, 3 => :*, 4 => :/, 5 => :**, 6 => :%}
  operator_num2 = rand(1..6)
  operator_hash2 = {1 => :+, 2 => :-, 3 => :*, 4 => :/, 5 => :**, 6 => :%}
  operator = operator_hash[operator_num]
  operator2 = operator_hash2[operator_num2]
  question = "#{num1}#{operator}#{num2}#{operator2}#{num3}"
  answer = eval(question)
  result = {question: question, answer: answer}
end
