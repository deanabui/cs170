# conditional statements 

if (7 > 3)
    print "great 1 "
end 

puts "hi"

print "great 2 " if 7 > 3 

print "great 3 " unless 7 > 3     # if true don't print  

# common syntax errors
# unless 7 > 3 puts "great 4 " 
# if 7 > 3 print "great 5 "

puts 
# Ternary conditional expressions 
puts 3 > 4 ? "F" :  "S"      # puts (print string) appends a new line 

3 > 4 ? x = "3" : x ="4"
puts x

3 > 4 ? (puts " first is greater") : (puts "second is greater")

puts
puts "Ruby is dynamic"
# var don't have a type until runtime
x= "dena"
y= 'dena'
z = :dena 
r = 3

puts x, y, z, r 

puts "Almu" + "dena" 

# Syntax error 
# int x = 3 

# String interpolation #{}
name = "Brandon"
puts "#{name} Konrad"

puts 
# syntax error, single quotes doesn't interpolate , can't use escape character either 
# print 'mystring = #{mystring}' 

puts "hi there"
puts "hi \"there \""
puts 'hi "there"'

print "hi there \n"
