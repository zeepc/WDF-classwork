# puts "Welcome to the personality interview game, what is your name?"
# name = gets.chomp
# print "Hello Name, what is your favorite color?"
# color = gets.chomp
# puts "#{color} really brings out your eyes, what is your favorite cartoon?"
# cartoon = gets.chomp
# puts  "What? No way, #{cartoon} is my favorite cartoon also. Okay last question, if you could have one super power what would it be?"
# power = gets.chomp
# puts "Well thank you #{name}, you sound like you would make a great superhero using #{power} for good"

#FizzBuzz

# puts "enter a number"
# number = gets.chomp
# num = number.to_i

# if num % 3 == 0 && num % 5 == 0
# 	puts "FizzBuzz"
# elsif num % 3 == 0
# 	puts "buzz"
# elsif num % 5
# 	puts "fizz"
# end

# Looping through Arrays

# people = [["Jason", "Maria", "Justin"], ["Red", "Blue", "Green"], ["Limp Bizkit", "3 Doors Down", "Papa Roach"]]
# arr = peole[[0][0][0]]

# # people.each_with_index

#  for arr.each do |arr|
# 	puts "#{arr}'s' favortire color is  #{arr} and he loves #{arr}"
# end

#DAY2 CLASSES
# Create a “Robot” object. 
# 1. Now give it a constructor that gives your new robots a modelname and weapon-strength value
# 2. Give it a instance method called compute that would puts out a random number
# 3. Give it a class method called override that would puts out “We are taking over now. All humans must die”
# 4. Use your Robot object and give it some attribute accessors for its properties of model and weapons
# 5. Create an instance of our robot called terminator. Give him a model of “T-800” and a weapons value of true. 


# class Robot
#   attr_accessor :modelname, :weapon_strength
# 	def initialize(modelname,weapon_strength)
# 		@modelname = modelname
# 		@weapon_strength = weapon_strength
# 	end
# 	def compute
# 		puts rand
# 	end

# 	def self.override
# 		puts "we're taking over now.All humans must die"
#   end
# end

# walee = Robot.new('walee', 900)
# puts walee.modelname

#INHERITANCE




