require_relative "student_type_error"
require_relative "cars"
require_relative "student"

#creates instance of student
jordan = Student.new("Jordan")
puts jordan
#following works with extend:
# puts Student.description
#following works with include:
puts jordan.description
puts Student.has_car?
#if below changed to string triggers rescue block 
jordan.student_age(28)

