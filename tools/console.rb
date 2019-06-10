require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new('ned')
passenger2 = Passenger.new('ted')
passenger3 = Passenger.new('fred')

driver1 = Driver.new('jeff')
driver2 = Driver.new('goat_man')
driver3 = Driver.new('boop')


ride1 = Ride.new(passenger1, driver1, 40.3)
ride2 = Ride.new(passenger2, driver2, 90.11)
ride3 = Ride.new(passenger3, driver3, 12)
ride4 = Ride.new(passenger1, driver2, 101.33)
ride5 = Ride.new(passenger1, driver1, 8.43)
ride6 = Ride.new(passenger3, driver1, 2.01)


# Put your variables here~!

binding.pry
