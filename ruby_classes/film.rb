#global variables indicated by $
$warning = "global variables are not reccomended!!"

# classes are the blueprint for an object
# classes start with capital letters
#Blueprint

class Film

    @@total_number_of_films = 0

#class constant
COUNTRY = "U.S.A"

#accessor methods 3 types
#give you getter and setter methods
#must be symbols and match instance names
# attr_reader :film_name
# attr_writer :film_genre
attr_accessor :film_name, :film_genre, :film_year_released

#house built with blueprint
# @ makes local instance variables/specific to each object
#if it starts with lower case or _ it is local
    def initialize(name, genre, year_released)
        #local instance variable:
        @film_name = name
        @film_genre = genre
        @film_year_released = year_released
        add_to_total_films
    end

#getters and setters
#can use setters or getters
# def get_film_name
#     @film_name
# end

# def set_film_name=(name)
#     @film_name = name
# end

# def get_film_genre
#     @film_genre
# end

# def set_film_genre=(genre)
#     @film_genre = genre
# end

# def get_film_year_released
#     @film_year_released
# end

# def set_film_year_released=(year)
#     @film_year_released = year
# end


#if it starts with lower case or _ it is local
    def say_hello
        #local variable:
        hello_string = "Hello"
        puts "#{hello_string} #{film_name}"
    end 
    
#class variables can be shared between objects
# written with @@
    
    def current_total_number_of_films
        puts "Current total number of films:
        #{@@total_number_of_films}"
    end
    
    def add_to_total_films
        @@total_number_of_films += 1
        current_total_number_of_films
    end


    def output_film_properties
        put "Name: #{name}, genre: #{genre}"
    end


    private :say_hello
    
end


