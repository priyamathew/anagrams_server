File.foreach('./db/words') do |word|
  word = word.chomp.downcase
  sorted_word = word.split("").sort.join
  args = {word: word, sorted_word: sorted_word}
  Word.create!(args)
end




