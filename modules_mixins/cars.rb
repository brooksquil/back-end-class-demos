require 'pry'
require 'awesome_print'

#modules are pices of code used together
#can be used to do multiple inheritance otherwise a class can only have one parent
#instance methods work on objects created by class methods
#class methods work on the blueprint which creates the instance objects
    module Car
        #all class methods go in method below
        module ClassMethods
            binding.pry
            def has_car?
                true
            end
        end
        #all instance methods go in method below


        # This Hook says if module is included extend above class methods
        def self.included(base)
            base.extend(ClassMethods)
        end


        def description
            "Car Description"
        end
    end

    #used by mixing module into class