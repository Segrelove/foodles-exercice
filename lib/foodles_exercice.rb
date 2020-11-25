# 1) Write a function that takes as input (sentence: String, n: Number) 
# and returns a list of size `n` where each element contains a word and the frequency of that word in `sentence`
# This list should be sorted by decreasing frequency and alphabetical order in case of tie.

# Example: 
# Input: ("baz bar foo foo zblah zblah zblah baz toto bar", 3)
# Output: 
# [
#    ("zblah", 3),
#    ("bar", 2),
#    ("baz", 2),
# ]

# 2) Write tests for the function you just wrote



def word_frequency(sentence, number)
  return nil if !sentence.is_a?(String) || !number.is_a?(Integer)

  duplicate_hash = Hash.new(0)

  arr = sentence.split(" ")

  arr.each { |name| duplicate_hash[name] += 1 }
  
  duplicate_hash.sort_by {|k, v| v}.reverse[0..number - 1]
end