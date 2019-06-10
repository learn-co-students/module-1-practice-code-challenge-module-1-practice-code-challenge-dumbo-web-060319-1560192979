require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


passenger1 = Passenger.new("Mary")
passenger2 = Passenger.new("Charlie")
passenger3 = Passenger.new("Carrie")

driver1 = Driver.new("Tony")
driver2 = Driver.new("Danny")
driver3 = Driver.new("Albert")

ride1 = Ride.new(driver1, passenger1, 3.2)
ride2 = Ride.new(driver2, passenger2, 5.0)
ride3 = Ride.new(driver3, passenger3, 2.4)
ride4 = Ride.new(driver2, passenger1, 7.2)
ride5 = Ride.new(driver1, passenger1, 3.1)
ride6 = Ride.new(driver1, passenger2, 4.3)

binding.pry
