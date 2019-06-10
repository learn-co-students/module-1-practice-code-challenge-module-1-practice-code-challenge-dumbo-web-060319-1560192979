require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
# Passengers
sam = Passenger.new("Sam")
tom = Passenger.new("Tom")
bill = Passenger.new("Bill")

# Drivers
bob_driver = Driver.new("Bob")
ted_driver = Driver.new("Ted")

binding.pry
