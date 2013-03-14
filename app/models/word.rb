class Word < ActiveRecord::Base

  # def canonical(word)
  #   word.downcase.split('').sort
  # end
 
 
  # def is_anagram?(word1, word2)
  #   canonical(word1) == canonical(word2)
  # end

  # def user_input(params[:word])
  #   @user_input = params[:word]
  #   anagram
  # end

  # def anagram
  #   @user_input.select { |x| is_anagram?(x, word) } 
  # end  

  def self.user_input(word)
    array = []
    user_input = word.downcase.split('').sort
    words = self.all
    words.each do |obj|
      array << obj.word if obj.word.downcase.split('').sort == user_input    
    end
    array
  end
end
