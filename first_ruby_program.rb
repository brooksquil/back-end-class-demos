staff = ["casey", "hannah", "Jisie"]


# not space sensitive, not much punctuation
# loop over array
# staff is taco
for staff in staff
    # puts staff
    if staff == "casey"
        fav_animal = "Pangolin"
    elsif staff == "hannah"
        fav_animal = "dog"
    else
        fav_animal = "Penguin"
# ends if else
end

puts "#{staff}'s favorite animal is a #{fav_animal}"

# end - ends for loop
end 


# Integers

driving_license_num = 12345
puts driving_license_num
puts driving_license_num.class
# predicate method with ?
puts driving_license_num.is_a? Integer
puts driving_license_num.is_a? String

# floats

social_security_number = 987.654
puts social_security_number
puts social_security_number.class
# to_i to integer cuts off decimal
# to_f to float add decimal
puts social_security_number.to_i
puts social_security_number.to_f

# .to_s = to string
ssn_str = social_security_number.to_s
# class is capitalized
puts ssn_str.is_a? String

ssn_str = "Social security number"
puts ssn_str.upcase!

puts ssn_str

puts ssn_str.downcase

puts ssn_str

puts ssn_str.capitalize


# string concat

hello = "Hello "
puts hello
hello << "my name is"
puts hello

brooke = " brooke"
my_hobby = " and I like to read."

hello.concat(brooke, my_hobby)
puts hello

# Symbols ar a data type
# once created can never be changed
# they are strings that cannot change value
# can be reused so cannot 1 copy
# even if strings are same they get diff object id => advantage of symbols
puts :brooke
puts :brooke.object_id
str1 = "brooke"
puts "Object id of str1: #{:brooke.object_id}"

# data type HASHES: are key value pairs
# using constructor
socks = Hash.new(0)
puts "The socks hash: #{socks}"
socks = {:polka_dot => 3, :striped => 5}
socks.default = 0
puts socks
puts socks[:none]
puts socks[:polka_dot]
# using literal
ties = {}
ties = {"bowties" => 4, "cravat" => 15}
puts ties
puts ties["bow ties"]
pants = {parachute: "cool", skinny: "ewww"}
puts pants[:parachute]
puts "Is the pasts hash empty? #{pants.empty?}"

puts pants.keys
puts "Does pants have value parachute? #{pants.has_value?("cool")}"
puts "Does pants have key parachute? #{pants.has_key?(:parachute)}"

pants.delete(:skinny)
puts pants


pants = {
    parachute: :cool,
    skinny: "ewww" }
puts pants[:parachute]
puts "Object id of pants: #{pants.object_id}"
puts "Object id of pants[:parachute]: #{pants[:parachute].object_id}"
for i in pants.keys
  puts i.object_id
end
shirts = {
  parachute: :cool,
  skinny: "ewww" }
puts "Object id of shirts: #{shirts.object_id}"
puts "Object id of shirts[:parachute]: #{shirts[:parachute].object_id}"
for i in shirts.keys
  puts i.object_id
end


puts "Invertes Hash: #{shirts.invert}"
puts "The key of ewww is #{shirts.key("ewww")}"
puts "The key of cool, which is a symbol, is #{shirts.key(:cool)}"

# give number of values in array
puts pants.length 

# merge arrays
pants_ties = pants.merge(ties)
puts pants_ties


# Arrays

staff = ["casey", "hannah", "jisie"]

my_array = Array.new
# shovel method << inserts = push
my_array << ["hello", 1]
puts "my_array: #{my_array}"
arr2 = []
arr2.insert(0,56)

puts "arr2: #{arr2}"
arr3 = [1, 2, 3, 4]
arr3.push("apples")
puts "arr3: #{arr3}"
# negative index counts from end of array
puts "arr3, 2nd element: #{arr3[20].inspect}"
puts "first: #{arr3.first} last: #{arr3.last}"
# (..) range of numbers (,) between indexes (at) returns value at index number
puts "arr3, elements from index 1 to 3: #{arr3[1..3]}"
puts "Does arr3 include 5? #{arr3.include?(5)}"
# unshift adds to beginning, push to end
# pop takes off end of array
# size does same as length


arr4 = Array.new(5)
puts "arr4: #{arr4.length}"
puts "arr4: #{arr4}"
arr5 = Array.new(3, "apples")
puts "arr5: #{arr5}"

arr6 = Array.new(4) {Hash.new}
puts "arr6: #{arr6}"

# Boolean
true_value = true
puts "#{true_value.class.class}"
false_value = false
puts "#{false_value.class}"
# everything is ruby is an object with a class
puts "#{true_value.to_s}"

puts "Is it an object of TrueClass? #{true_value.is_a? TrueClass}"

puts "Is it an object of FalseClass? #{true_value.is_a? FalseClass}"

color = false_value ? "green" : "red"
puts color

# capitalize for const
HELLO = "hello"
puts HELLO
HELLO = "new value"
puts HELLO


