require('rspec')
require('pry')
require('find-replace')

describe("SearchablePhrase#find_and_replace") do
  it ("will create phrase and utilize a reader method to return it") do
    word = SearchablePhrase.new("searchable")
    expect(word.return_phrase_to_search_in()).to(eq("searchable"))
  end
  # it ("will create an array of string-words from the input") do
  #   phrase = SearchablePhrase.new("two words")
  #   expect(phrase.search_and_replace()).to(eq(["two", "words"]))
  # end
  it ("will loop through the inputted string, convert to an array of string-words and look for the input (word_to_find), and replace it with the second argument") do
    phrase = SearchablePhrase.new("two words")
    expect(phrase.search_and_replace("words", "zebras")).to(eq("two"))
  end
  it ("will loop through the array of string-words and look for the input") do
    phrase = SearchablePhrase.new("two words")
    expect(phrase.search_and_replace("words")).to(eq(1))
  end
end
