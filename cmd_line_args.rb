#ARGV list of comman line aruments array
#this happens when the program runs
command_line_args = ARGV

puts command_line_args
#command has 3 parts, keyword ruby, option(-d, -h), name of file to run, list of arguments

#normal array methods
puts command_line_args.length
puts command_line_args.to_s
puts command_line_args[0].class

first_arg, *other_args = ARGV
puts first_arg.to_s
puts other_args.to_s


puts "Hello, what is your name?"
#refreshes input 
STDOUT.flush 
#standard input = STDIN (global variable)
# name = STDIN.gets
#chomps off new line characters at end of string
# name = gets.chomp
#strip removes same as chomp but from front and end of string.
name = gets.strip
puts "Welcome, #{name}. This is Nasville."