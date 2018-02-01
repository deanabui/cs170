# Method chaninig 

p nil.to_s.empty?

p "Hello".empty?

p "I am here".split(/\W+/)           #  \W  nonword character 
	                                 #  +   one or more https://regexr.com/ 
p "I am&here".split(/\W+/)
p "I am&here".split(/\s+/)           #  \s space character
	
p 'I am here'.split(/\s+/).select{|s| s =~ /^[aeiou]/i}   # selects elem with certain cond  
                                                          # return a new array   

mystring = 'I am here'.split(/\s+/).select{|s| s =~ /^[aeiou]/i}.
      map{|s| s.downcase}                       
                                          # maps applys { } and returns new array 

print   "mystring = #{mystring} " 
