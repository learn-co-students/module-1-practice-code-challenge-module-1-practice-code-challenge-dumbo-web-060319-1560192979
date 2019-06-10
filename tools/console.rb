require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

joe = Passenger.new("Joe")
steve = Passenger.new("Steven")

lenny = Driver.new("Lenny")
driver_neumero_dos = Driver.new("Driva")

ride1 = Ride.new(lenny, joe, 23.4)
ride2 = Ride.new(lenny, steve, 32.6)
ride3 = Ride.new(lenny, joe, 73.6)
ride4 = Ride.new(lenny, joe, 54.3)

binding.pry
