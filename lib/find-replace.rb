class SearchablePhrase < String
  def initialize(searchable)
    @searchable_word = searchable
  end

  def return_phrase_to_search_in()
    @searchable_word
  end

  def search_and_replace(word_to_find, word_to_replace)
    word_array = @searchable_word.split(" ")
    index_to_delete = word_array.find_index(word_to_find)
    word_array.delete_at(index_to_delete)
    word_array.insert(index_to_delete, word_to_replace).join(" ")
  end

end
