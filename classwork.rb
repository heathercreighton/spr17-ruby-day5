# @name = "Heather" # I can travel in and out of methods

# name = "Demetrius" #I can not travel inside the method

# def puts_name
# 	name = "Sean is in the method" #I can only stay in this method
# 	puts name
# 	puts @name
# end	

# puts_name

# #*********************************************#
# dog = "Finn"

# def puts_pet(dog)
# 	puts dog
# end	

# puts pet
# #*********************************************#

# #Let's create a new class called Person
# class Person

# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end	


# 	def name
# 		@name
# 	end 
	

# 	def age
# 		@age
# 	end
	

# end	



# my_profile = Person.new("Heather", 42)

# puts my_profile.name


# #*********************************************#
# class User
# 	def initialize(name, username)
# 		@name = name
# 		@username = username
# 	end

# 	def name
# 		@name
# 	end

# 	def username
# 		@username
# 	end	

# end		


# user_profile = User.new("Heather", "HeatherC")
# user_profile2 = User.new("Jelani", "JelaniH")
# user_profile3 = User.new("Niesha", "NieshaB")



# puts "#{user_profile.name}, #{user_profile.username}"



#We create a pet class that takes in name, breed and personality as attributes and set them to instance variables that can be used in all our methods.

# class Pet

# 	def initialize (name, breed, personality)
# 			@name = name
# 			@breed = breed
# 			@personality = personality
# 	end	

# 	def name
# 		puts "This pet's name is #{@name}"
# 	end	

# 	def breed
# 		puts "This pet is a #{@breed}"
# 	end
	
# 	def personality
# 		puts "This #{@breed} is very #{@personality}."
# 	end	


# end	



# #We create instances of our Pet class that inherits the characteristics of our Pet class, allowing us to use the methods available to use through class
# cat1 = Pet.new("Fluffy", "tabby", "nice")

# cat2 = Pet.new("Scratchy", "hairless", "mean")

# dog1 = Pet.new("Rover", "chow", "docile")



# puts cat1.name
# puts cat1.personality



#**************************************************#

#Using methods to access and modify our data
# class Mumbojumbo

#     def initialize(name, age)
#         @name = name
#         @age = age
#     end

#     def name
#         @name
#     end

#     def age
#         @age
#     end

#     def birthday
#         @age += 1
#     end

#     def change_name(name)
#         @name = name
#     end


# end
# my_profile = Mumbojumbo.new("Heather", 33)

# puts "I used to be #{my_profile.age}."

#  my_profile.birthday

# puts "I am now #{my_profile.age}"

# puts "I am no longer #{my_profile.name}..."

# my_profile.change_name("Queen Mama")

# puts "My name is now #{my_profile.name}."

# #**************************************************#
# #Create a product class with methods to control quantity



# class Product
# 	attr_accessor :name, :quantity

# 	def initialize(name, quantity)
# 		@name = name
# 		@quantity = quantity

# 	end	


# 	def add_quantity
# 		@quantity +=1

# 	end	


# 	def sub_quantity
# 		@quantity -=1
# 	end	


# end	


# table = Product.new("Broyhill", 30)

# chair = Product.new("Lazy Boy", 40)



# puts "We currently have #{table.quantity} #{table.name} tables in stock"


# table.add_quantity 

# puts "We now have #{table.quantity} #{table.name} tables in stock"


# table.sub_quantity
# table.sub_quantity

# puts "We now have #{table.quantity} #{table.name} tables in stok"



# puts "I have #{chair.quantity} #{chair.name} chairs"


# chair.add_quantity
# puts "I have #{chair.quantity} #{chair.name} chairs"


# #**************************************************
#  class Pet

#  	attr_accessor :name, :sound

# 	def initialize (name, sound)
# 			@name = name
# 			@sound = sound
# 	end	


# end	


# cat = Pet.new("Fluffy", "meow")
# dog = Pet.new("Rover", "woof")
# bird = Pet.new("Pecker", "tweet")

# puts cat.sound

# puts "#{cat.name} makes the sound '#{cat.sound}'."

# puts "#{dog.name} makes the sound '#{dog.sound}'."





# Create a brand new class: Vehicle
# What should the attributes be?
# What methods should we create?





class Vehicle
	attr_accessor :model, :year, :color, :seating

	def initialize (model, year, color, seating)
	
		@model = model
		@year = year
		@color = color
		@seating = seating
	end	

	def new_color(color)
		@color = color

	end
	
	def more_seats 
		@seating +=3
	end	

	def less_seats
		@seating -=3

	end	


end	

all_the_vehicles =[]

# honda1 = Vehicle.new("Pilot", 2017, "Blue", 5)
honda1 = Vehicle.new("Pilot", 2017, "Blue", 5)

all_the_vehicles.push(honda1)

honda2 = Vehicle.new("Odyssey", 2017, "Gray", 8)
all_the_vehicles.push(honda2)

#Change the color of honda1


puts "#{honda1.model}'s old color is #{honda1.color}"
honda1.new_color("Red")
puts "#{honda1.model}'s new color is #{honda1.color}"


puts "#{honda1.model} has #{honda1.seating} seats in it."
honda1.more_seats

puts "We've added seats!  #{honda1.model} now has #{honda1.seating} seats in it."


all_the_vehicles.each do |vehicle|

		puts " #{vehicle.model}, #{vehicle.color}"

end	


