require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

abril = Passenger.new("Abril")
karina = Passenger.new("Karina")
roberto = Passenger.new("Roberto")

driver1 = Driver.new("Driver1")
driver2 = Driver.new("Driver2")
driver3 = Driver.new("Driver3")

ride1 = Ride.new("Abril", "Driver2", 5.5)
ride2 = Ride.new("Roberto", "Driver3", 10.3)
ride3 = Ride.new("Karina", "Driver1", 60.1)
ride4 = Ride.new("Abril", "Driver3", 6.8)

# Put your variables here~!

binding.pry
