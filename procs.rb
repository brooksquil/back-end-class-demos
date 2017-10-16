# Proc is short for proceedure
# procs are a class (no name, pass entire block)

[1,2,3,4,5].each { |number| puts number}

def call_block
    # yield runs everything between curly braces below
    yield 1
    yield 2
end

# A block is a block of code/ a method with no name that can be re-used

call_block { |iterator| puts "Here is my block. Iterator: #{iterator}"}

# &block This parameter promises a block
def call_explicit_block
   return "There's no block" unless block_given?
    # call acts on passed block
    # block.call
    yield
end

# call_explicit_block { puts "This is an explicit block"}

check_for_block = call_explicit_block
puts check_for_block


# LAMBDAS:
# if expecting args wil not run if none are passed
say_hello = -> (name) {puts "Hello #{name}"}
say_hello.call("Brooke")

# Proc:
# proc is class, initialized same as other classes. 
# asks for 3 args but if not passed it still runs
my_proc = Proc.new{ |arg1, arg2, arg3| puts "This is a proc #{arg1}"}
my_proc.call("yo")
# .call invokes the function
# argument not required to pass

#Lambda
#  skinny arrow -> creates lambda
return_lambda = -> { return "something"}
puts "#{return_lambda.call}"

#proc
# returns out of entire method
def return_proc
    puts "Before"
    return_proc = Proc.new{return "Something else"}
    return_proc.call
    puts "After"
end

p return_proc

#Lambda
# returns out of code block in which it was called
def another_lambda
    l = lambda { return }
    l.call
    puts "Hello"
    puts "After lambda"
end

another_lambda

def another_proc
    p = Proc.new { return }
    p.call
    # after called return 
    puts "After proc"
end

another_proc
puts "Next line after proc"


def call_the_proc(new_proc)
    count = 1
    # proc gets called here but carries value from execution scope on line 89
    # proc references, does not store value
    new_proc.call
end

# captures current execution state - closure - proc carries values with it
# count initialed outside method
count = 2017
# proc gets defined
new_proc = Proc.new { puts count }

p call_the_proc(new_proc)


