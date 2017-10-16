# enumerator is a class


enum = ['apple', 'bear', 'cactus'].each
puts enum
# prints object
puts enum.size
# prints 3
puts enum.next
# prints apple


puts enum.next
# prints bear
puts enum.peek
# prints all three strings
# if too many next calls error: iteration reached
puts enum.rewind 
# brings back to start

puts "#{enum.next_values}"
# prints Array of string

enum.each_with_index { |num, i| puts "#{i}.#{num}"}
# prints strings with index numbers

enum.with_index(1) { |num, i| puts "Offset #{i}.#{num}"}
# prints  with index numbers starting at 1, ie offest by 1
