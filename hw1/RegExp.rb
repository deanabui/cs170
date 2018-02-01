# See book Figure 3.2
# i for case insensitive
# * zero or more    + 1 or more      ? 0 or 1
# ^ start of the line   $ end of the line 
# [] set, one of the elements in the set 
# () group 
# \d dig  \s space 
# See https://regexr.com/  and rubular.com  

# In Ruby =~ is the match operator 
puts "**************"
puts ("hello" =~ /lol/) ? "Matching" :  "Not matching" 
puts ("there" =~ /he/) ? "Matching" :  "Not matching" 
puts (/llo/ =~ "hello") ? "Matching" :  "Not matching" 

puts "**************"

puts "8:25 PM" =~  /(\d\d?):(\d\d)\s*([ap])m$/i ? "yes" : "not"  
# $1, $2, $3 contains the quantity in parenthesis 
puts "#{$1}  #{$2}  #{$3} " 

puts "**************"
# omit  ()
puts "8:25 PM" =~  /\d\d?:\d\d\s*[ap]m$/i ? "yes" : "not"  
puts "$1 = #{$1}"  # won't work  

puts "540 pm" =~  /(\d\d?):(\d\d)\s*([ap])m$/i ? "yes" : "not" 

puts
puts "This is a :symbol in Ruby"
#symbols are imnutable strings, faster in memory 
puts "Almu" << "dena!"
puts :Almu << "dena!"






