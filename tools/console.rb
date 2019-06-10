require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!


passenger1 = Passenger.new("Mike")
passenger2 = Passenger.new("Anna")


driver1 = Driver.new("Kissinger")
driver2 = Driver.new("Nixon")


ride1 = Ride.new(driver1, passenger1, 5.1)
ride2 = Ride.new(driver2, passenger2, 7)
ride3 = Ride.new(driver2, passenger1, 9)


binding.pry
