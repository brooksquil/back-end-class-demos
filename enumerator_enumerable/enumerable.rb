# modules of class enumerator

array_words = ['pear', 'peach', 'pomegranite', 'petunia', 'abcd']

array_ints = [2, 3, 6, 8, 1]

# map_array = array_words.map { |word| word.upcase + "!"}
# puts map_array.inspect
# prints word array in full in upcase

# find = array_ints.find { |i| i.even? }
# puts find
# prints first even number

# find_all = array_ints.find_all { |i| i.even? }
# puts find_all.inspect
# prints all even numbers

# reject = array_ints.reject { |i| i.even? }
# puts reject.inspect
# returns all odd numbers


grep_array = array_words.grep(/ea/).map { |word| word.upcase }
puts grep_array.inspect
# all words with ea

puts array_ints.reduce { |sum, int| sum + int }
# adds all numbers in array

longest_word = array_words.reduce do |memo, word|
    memo.length > word.length ? memo:word
end

puts "longest word: #{longest_word}"
# prints longest word

group_words = array_words.group_by { |word| word.length }
group_ints = array_ints.group_by { |i| i%2 }
puts group_words
# returns words grouped by length
puts group_ints
# prints grouped by odd/even

words_ascend = array_words.sort
puts words_ascend
words_descend = array_words.sort { |a, b| b <=> a }
puts words_descend

words_length = array_words.sort_by { |word| word.length }
puts words_length
# orders by word length

# question marks in ruby mean it will return true or false

all = array_words.all? { |word| word.length < 5 }
puts all
# returns false

any = array_words.any? { |word| word.length < 5 }
puts any
# returns true

include = array_ints.include? 1
puts include
# returns true

# change array:
array_ints.map! { |i| i + 2 }
puts array_ints
