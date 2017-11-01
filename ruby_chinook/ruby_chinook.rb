require 'sqlite3'


begin
db = SQLite3::Database.open("/Users/BPC/workspace-back-end/class-demo/ruby_chinook/Chinook_Sqlite.sqlite")

# albums = db.execute("select * from album;")
# p albums.class
# p albums

# country_most_money = db.execute("select country, max(money)
# from
# (select c.country as country, total(i.total) as money
# from customer c
# join invoice i on c.customerid = i.customerid
# group by c.country
# order by monet desc);")
# p country_most_money

# new_artist = db.execute("INSERT INTO artist (name) VALUES ('Test');")
# p new_artist

# artist_named_jisie = "Jisie"
# db.execute("INSERT INTO artist (name) VALUES ('#{artist_named_jisie}');")
# jisie_id = db.last_insert_row_id
# p jisie_id

# all_jisies = db.execute "SELECT * FROM artist WHERE name = ?", artist_named_jisie
# p all_jisies

# all_jisies = db.execute "SELECT * FROM artist WGERE name = :taco1 AND artistid = :taco2", jisie, 299
# p all_jisies

# pepare creates sql statement
# name = "Jisie"
# stm = db.prepare "SELECT * FROM artist WHERE Name = ?"
# stm.bind_param 1, name
# rs = stm.execute
# p rs.class
# p rs.next

# stm.close
# creates and holds memory until execution
# returns result type called resultset

db.transaction
# db.execute "CREATE TABLE Concerts (COncertId INTEGER PRIMARY KEY, Venue TEXT)"
db.execute "INSERT INTO Concerts(Venue) VALUES ('Ryman Auditorium')"
db.execute "INSERT INTO Concerts(Venue) VALUES ('Nissan Stadium')"
db.commit

db.close if db


rescue SQLite3::Exception => e
p "Exception with database query: #{e}"
# rollback on failed query
db.rollback
end
