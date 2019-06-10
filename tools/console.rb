require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

r1 = Ride.new("Brooklyn")
r2 = Ride.new("LI")

p1 = Passenger.new("Ali")
p2 = Passenger.new("Karimi")

d1 = Driver.new("John")
d2 = Driver.new("Appleseed")



binding.pry
