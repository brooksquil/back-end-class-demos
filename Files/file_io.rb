require 'yaml'

# opens file object:
puts File.read("sample_file.txt")

# Below opens file with edit mode passed:
# reference to actual file
# opens file object
# r is for read only file mode
# r+ read write - writes mode, to file, that already exists
# w writes mode - Write only mode, from beggining of file
# w+ read/write - overwrites file from beginning
# a append mode - write only to end of file
# a+ reads what is there then adds/appends to end
f1 = File.open("sample_file.txt", "r+")
# puts f1.read
puts f1.inspect
f1.write(' I am inserting new text')
f1.close

# open connection to and write file
File.open("another_sample_file.txt", "w") do |f|
    # write to file
    f.puts "There was a new file with text I'm writing to it"
end
    
f2 = File.open("another_sample.txt", "a+") do
    |f1|
    while line = f1.gets
        puts line
    end
end


f3 = File.open("pteradactyl_data.txt", "r+")
p f3.read
f3.rewind
# optional read parameters:
# first arg says where to start by byte
# second pass variable you want it named to
buffer = ""
p f3.read(12, buffer)
p buffer
f3.close
p "********************"
File.open("pteradactyl_data.txt") do |f|
    # IO::SEEK_SET - select which byte for cursor to go to
    f.seek(4, IO::SEEK_SET)
    p f.read(3)
end

data = File.readlines("pteradactyl_data.txt")
p data[0]

# serialization - turns data into byte stream
# in ruby it's called marshalling

# converted yaml data to hash
File.open("yaml_data.yaml", "r").each do |f|
    puts YAML::load(f)
end

f4 = File.open("new_yaml.yaml", "w+")
# dump - take date, serializing then dumping into a file
f4.puts YAML::dump("Test")
f4.close

# open is similiar to File.open - allows passing of argument
f5 = open("my_data.txt", "w")
f5.write("New Data")
f5.close