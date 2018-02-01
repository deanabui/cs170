# Read a file, 


# reading from a file 
if File.exist? 'mytext.txt'
  File.foreach( 'mytext.txt' ) do |line|
    puts line.chomp
  end
end

# downcase and split are defined in String class
p IO.read("mytext.txt")
p IO.read("mytext.txt").split(/\W+/)     # creastes an array 
p IO.read("mytext.txt").split(/\W+/).select { |s| s =~ /^[aeiou]/i }
p IO.read("mytext.txt").split(/\W+/).select { |s| s =~ /^[aeiou]/i }.map { |s| s.downcase }  
p IO.read("mytext.txt").split(/\W+/).select { |s| s =~ /^[aeiou]/i }.
  map { |s| s.downcase }.uniq  

p IO.read("mytext.txt").split(/\W+/).select { |s| s =~ /^[aeiou]/i }.
  map { |s| s.downcase }.
  uniq.sort
  

words = IO.read("mytext.txt").
  split(/\W+/).
  select { |s| s =~ /^[aeiou]/i }.
  map { |s| s.downcase }.
  uniq.
  sort

p words