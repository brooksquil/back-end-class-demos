class Student
    #include module in class "mixin"
    #the methods are added as instance methods
    #extend module add as class method
    # extend Car
    include Car

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def student_age(age)
        puts "Before begin end block of code"
        begin

            puts "Hi, this is working!"

        raise ArgumentError, "Argument is not integer" unless age.is_a? Integer

        raise StudentTypeError, "This is not an NSS student"

        puts "is still working?"
        puts "#{name} is #{age} years old"
        rescue StandardError => e
            puts "There's been an exception"
            # the message is what was passed as string in argument error
            puts "Exception message: #{e.message}"
            puts "Exception backtrace: #{e.backtrace}"
        rescue StudentTypeError => e
            puts "Error: #{e.message}"
        ensure
            puts "ensure it runs!"
        # else
        #     "Run the code if all is well"
        end
            puts "After begin end block"
    end
end