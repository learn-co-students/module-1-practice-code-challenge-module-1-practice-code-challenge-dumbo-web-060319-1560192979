require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


p1 = Passenger.new("David")
p2 = Passenger.new("Miles")
p3 = Passenger.new("Ali")

d1 = Driver.new("Mike")
d2 = Driver.new("Tom")

r1 = Ride.new(p1,d1,35)
r2 = Ride.new(p2,d2,17)
r3 = Ride.new(p3,d1,30)


binding.pry
