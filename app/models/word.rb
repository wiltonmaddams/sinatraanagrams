class Word < ActiveRecord::Base

  def self.anagrams_for(search_word)
    sorted_search_word = search_word.split('').sort.join('')
    word_bank = Word.where("sorted = ?", sorted_search_word)
    word_bank.select! { |term_object| term_object.word.length == search_word.length }
    word_bank.map { |term_object| term_object.word }
  end
end
