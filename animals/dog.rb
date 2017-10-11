require_relative 'animal'

class Dog < Animal
    
    def initialize(name)
        super(name, "Dog") #super calls Animal's initialize
    end
    
    # Sets the speed of the dog
    def walk
        @speed = @speed + (0.2 * @legs)
    end
end