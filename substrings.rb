require 'pry'

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(phrase, dictionary)
  # separate the phrase into lowercase words (some include punctuation marks)
  words = phrase.downcase.split(' ')

  words.reduce(Hash.new(0)) do |count, word|

    # cycle through all the dictionary entries and compare them to the current word from the phrase
    dictionary.each do |entry|

      # if the word includes the entry or a part of it, the entry gets added to the hash and/or adds one count to it
      if word.include?(entry)
        count[entry] += 1
      end
    end
    count
  end

end

p substrings("Howdy partner, sit down! How's it going?", dictionary)