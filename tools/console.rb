require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

# Passengers
jim = Passenger.new("Jim")
kim = Passenger.new("Kim")
tim = Passenger.new("Tim")

# Drivers
matt = Driver.new("Matt")
pat = Driver.new("Pat")
cat = Driver.new("Cat in a Hat")

# Rides
drift = Ride.new(matt, kim, 4.5)
drift2 = Ride.new(pat, kim, 5.5)
drift3 = Ride.new(cat, kim, 88.5)

dash = Ride.new(matt, kim, 4.5)
dash2 = Ride.new(pat, tim, 5.5)
dash3 = Ride.new(cat, jim, 88.5)


binding.pry
