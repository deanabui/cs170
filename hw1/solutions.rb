# deana & regina

# Problem 1a
def palindrome?(string)
    string = string.downcase.gsub(/\W/, "").reverse
    string == string.reverse
end

puts palindrome?("A man, a plan, a canal -- Panama") #=> true
puts palindrome?("Madam, I'm Adam!") # => true
puts palindrome?("Abracadabra") # => false (nil is also ok)
puts

####################

# Problem 1b
def count_words(string)
    string_array = string.downcase.gsub(/[^\w\s']/, "").split
    word_hash = Hash.new(0)
    string_array.each { |word|
    word_hash[word] += 1
    }
    return word_hash
end

p count_words ("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
p count_words ("Doo bee doo bee doo") # => {'doo' => 3, 'bee' => 2}
p count_words ("Don't bee doo bee doo")
puts

####################

# Problem 2a

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
    
def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    # your code here
    strategy0 = game[0][1].downcase
    strategy1 = game[1][1].downcase
    raise NoSuchStrategyError unless ((strategy0 =~ /^[rps]$/) && (strategy1 =~ /^[rps]$/))
    if strategy0 == strategy1
        return game[0]
    elsif strategy0 == "r" && strategy1 == "s" || strategy0 == "s" && strategy1 == "p" || strategy0 == "p" && strategy1 == "r"
        return game[0]
    else
        return game[1]
    end
end

p rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])
p rps_game_winner([ ["Armando", "P"], ["Dave", "R"] ])
p rps_game_winner([ ["Armando", "S"], ["Dave", "R"] ])
p rps_game_winner([ ["Armando", "S"], ["Dave", "S"] ])
#p rps_game_winner([ ["Armando", "R"], ["Dave", "Q"] ])
puts

####################

# Problem 2b - ec

####################

# Problem 3a
# Almudena said this way is fine

def combine_anagrams(words)
    words.group_by { |word|
    word.downcase.chars.sort
    }.values
end

p combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams','scream'])
puts

####################

# Problem 4a&b

class Dessert
    attr_accessor :name
    attr_accessor :calories
    
    def initialize(name, calories)
        @name = name
        @calories = calories
    end
    
    def healthy?
        calories < 200
    end
    
    def delicious?
        return true
    end
end

class JellyBean < Dessert
    attr_accessor :flavor
    
    def initialize(name, calories, flavor)
        @flavor = flavor
        super(name, calories)
    end
    
    def delicious?
        flavor != "black licorice"
    end

end

dessert = Dessert.new("apple", 89)
p dessert.healthy?
p dessert.delicious?

jb = JellyBean.new("black jb", 30, "black licorice")
p jb.delicious?