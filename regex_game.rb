puts "Enter a sentence do not let the other player see"
starting_sentence = gets.chomp!

sentence_array = starting_sentence.split("").map(&:downcase)
account_count = sentence_array - [" "] 
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")


while sentence_array.count("") < account_count.count 
  puts "Guess a letter: "
  guess = gets.chomp.downcase 

  if sentence_array.include?(guess) 
    while sentence_array.include?(guess)
      letter_index = sentence_array.find_index(guess)
      sentence_array[letter_index] = ""
      final_sentence[letter_index] = guess 
    end
    puts "Correct guess now the sentence is: #{final_sentence.join}"

  else 
    puts  "Sorry that letter is not in the sentence try again"
  end 
end 

system("open", "https://giphy.com/gifs/ptm-l0HUnQR733uhm48UM")
