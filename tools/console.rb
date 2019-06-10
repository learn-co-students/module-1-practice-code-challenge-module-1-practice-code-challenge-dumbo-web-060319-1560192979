require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new("garrett")
driver2 = Driver.new("richard")
driver3 = Driver.new("hamza")
driver4 = Driver.new("alex")

passenger1 = Passenger.new("guy1")
passenger2 = Passenger.new("guy2")
passenger3 = Passenger.new("guy3")
passenger4 = Passenger.new("guy4")

ride1 = Ride.new(driver1,passenger4,10)
ride2 = Ride.new(driver1,passenger3,5)
ride3 = Ride.new(driver2,passenger4,30)
ride4 = Ride.new(driver3,passenger4,101)
ride5 = Ride.new(driver4, passenger2, 200)


# Put your variables here~!

binding.pry
