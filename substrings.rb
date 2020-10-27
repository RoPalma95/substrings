require 'pry'

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(phrase, dictionary)
  words = phrase.downcase.split(' ')

  words.reduce(Hash.new(0)) do |count, word|
    dictionary.each do |entry|
     if word.include?(entry)
      count[entry] += 1
     end
    end
    count
  end
  
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)