# require "./film.rb"
# require loads file into memory, will use previously loaded file 
# OR
# load "./film.rb"
# load loads only when called, only useful if you have a dynamically changing program
#OR
# requires within same directory
require_relative "film"
require_relative "book"
require_relative "fantasy"


#make an object using above class
#House made with blueprint 
film1 = Film.new("Harry Potter", "Fantasy", "2001")
#film1 is an object or instance of the class film 
# film1.say_hello
puts film1.current_total_number_of_films
puts Film::COUNTRY
film1.film_name = "Rocky"
film1.film_genre= "manly bullshit"
film1.film_year_released= 1990
# film1.set_film_name = "Rocky"
puts "film 1 name: #{film1.film_name}, genre: #{film1.film_genre}, year: #{film1.film_year_released}"

film2 = Film.new("Harry Potter 2", "Fantasy", "2003")
# film2.say_hello
film2.current_total_number_of_films

book1 = Book.new
book1.give_me_global_var

#methods can be public (called by anyone), private (only viewable inside the class), protected (only invoked by objects of defining and subclasses)


fantasy1 = Fantasy.new("Harry Potter 2", "Fantasy", "2003")
fantasy1.epic_music
fantasy1.output_film_properties