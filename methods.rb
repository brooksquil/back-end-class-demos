# method is a ruby function
# def defies function
#  pass argument in function and or call
def first_method(name = "Brooke", age = "38")
    puts "Hello #{name}. You are #{age} years old"
end
# can use parenthesis or not will work both ways
def first_method(name, age)
    puts "Hello #{name}. You are #{age} years old"
end

first_method("brooke", "38")


# ruby methods return last value by default without stating return
def second_method
    puts "This is my second method"
   "Hello"
end

output_str = second_method
puts output_str 


#  * means passing multiple arguments
def third_method(*my_args)
    puts "I have benn passed #{my_args.length} arguments in #{my_args}"
    for arg in my_args
        puts "Argument: #{arg}"
    end
end

third_method(1,true,5)
third_method
third_method("Nora","LaKiesha")

def fourth_method(number)
    number = 7
    puts number
end

my_number = 20
fourth_method(my_number)
puts my_number

def add(number1, number2)
    number1 + number2
end
def subtract(number1, number2)
    number1 - number2
end

def multiply(number1, number2)
    number1 * number2
end


puts add(1,1)
puts subtract(5,3)
puts multiply(3,6)
puts multiply(add(5,5), subtract(15,5))









