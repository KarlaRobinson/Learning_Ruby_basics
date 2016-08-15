def deaf_grandma
  puts "hello, how are you?"
  question = gets.chomp
  response = "HUH ?! not hear you, son!"
  input(question, response)
end

def input(question, response)
  while question.upcase != "BYE TQM"  do
    if question.include? "!"
      puts "NO, NOT SINCE 1983"
    else
      puts response
    end
    question = gets.chomp
  end
end

deaf_grandma