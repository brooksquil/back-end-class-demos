puts "hi"

# LOOPS

counter1 = 1
# while statement
while counter1 < 5 do
    puts "Loop1 number #{counter1}"
counter1 += 1
end

# while modifier
counter2 = 5
begin
    puts "Loop2 number #{counter2}"
    counter2 -= 1
end while counter2 < 4

# Until Statement
# executes while condition is false
counter3 = 1
until (counter3 > 5) do
    puts "Until statement iteration #{counter3}"
    counter3 += 1
end

# Until Modifier
counter4 = 0
begin 
    puts "until modifier iteration #{counter4}"
    counter4 += 1
end until counter4 > 5

# For Loop
# works without do
for i in 1..3 do
    puts "For Loop iteration #{i}"
end

# .each Loop
(1..10).each do |i|
    puts "Each loop iteration #{i}"
end

students = {:name => "Nora", :animal => "fish"}
students.each do |key,value|
    puts "Key: #{key} value #{value}"
end

for i in 1..10
    puts "For loop iteration 1 to 10 #{i}"
    if i > 8
    break
    end
end

for i in 1..5
    if i < 2 then
        next
    end
    puts "For loop 1 to 5 iteration #{i}"
end

for i in 0..7
    if i < 2 then 
        puts "for loop 0 to 7 iteration #{i}"
        # redo
    end
end
    
5.times { |i| puts "iteration #{i}"}
5.upto(10) { |taco| puts "Taco iteration #{taco}"}


