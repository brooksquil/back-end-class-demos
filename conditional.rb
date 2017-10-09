student1 = "Nora"
# parenthesis can be used or not
# an if is required
#  you can have multiple elsifs
#  you can have no else or one else
if (student1 == "Nora")
    puts student1
elsif student1 == "Brooke"
    puts "#{student1} is not Nora"
else
    puts "I don't know who this is: #{student1}"
end
# Nil & false always eval to false, everything else to true
nil_value = nil

if nil_value = nil
puts "Nil is true"
else 
    puts "Nil is false"
end

puts student1 if student1 == "Lakeisha"

#unless statement/ can only use else in unless
unless student1 == "Brooke"
    puts "This ain't Brooke"
else
    puts "It's #{student1}"
end

puts student1 unless student1 == "Brooke"
# unless is useful when if not needed or you can do if not

# CASE STATEMENT
# can use when then makes more readble or place puts on line below 

case student1
when "Brooke" then puts "Hi Brooke"
when "Nora" then puts "Hi Nora"
when "Lakiesha" then puts "Hi Lakiesha"
end

age = 22
output = case age
when age > 10
    "Older than 10"
when age > 20
    "Older than 20"
when age > 30
    "Older than 30"
when age > 40
    "Older than 40"
else 
    "way older than 40"
end
puts output





# Can use && || != ==
# Order of operations 
# 1. <=, >=, <, >
# 2. ==, !=
# 3. &&
# 4. ||
