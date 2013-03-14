words = File.open('app/words')

words.each do |word|
  Word.create(:word => word.chomp)
end
