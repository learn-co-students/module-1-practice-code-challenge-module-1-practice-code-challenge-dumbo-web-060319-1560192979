require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
driver1 = Driver.new("david")
driver2 = Driver.new("freddy")

passenger1 = Passenger.new("iggy")
passenger2 = Passenger.new("joey")

ride1 = Ride.new(driver1, passenger1, 1.1)
ride2 = Ride.new(driver2, passenger2, 2.2)
ride3 = Ride.new(driver2, passenger1, 2.1)
ride4 = Ride.new(driver2, passenger1, 2.3)
ride5 = Ride.new(driver1, passenger1, 100.0)

passenger1.drivers

driver1.passenger_names

binding.pry
