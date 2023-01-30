# Return a hash where key is a substring and the value is the number of times
# the substring is found in the given word.
def substrings(word, substrings)

  substrings.reduce(Hash.new(0)) do |accumulator, substring|

    count = substrings_helper(word, substring)
    accumulator[substring] += count unless count == 0
    accumulator

  end

end


def substrings_helper(word, substring)

  word = word.downcase
  substring = substring.downcase
  word.scan(substring).length

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)