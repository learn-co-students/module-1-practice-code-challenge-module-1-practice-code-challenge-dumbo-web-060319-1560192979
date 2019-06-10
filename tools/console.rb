require "pry"

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("Carlos")
passenger2 = Passenger.new("Peter")
passenger3 = Passenger.new("Joe")

driver1 = Driver.new("Samir")
driver2 = Driver.new("Enrique")
driver3 = Driver.new("Lola")


ride1 = Ride.new(driver3, passenger1, 3.1)

ride1.passenger
passenger1.rides

binding.pry
