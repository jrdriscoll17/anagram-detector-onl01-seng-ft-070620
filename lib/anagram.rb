class Anagram
  attr_accessor :word, :word_list

  def initialize(word)
    @word = word
  end

  def match(word_list)
    matching_words = []
    word_list.each do |word_from_list|
      if word_from_list.split("").sort == @word.split("").sort
        matching_words << word_from_list
      end
    end
    matching_words
  end
end
