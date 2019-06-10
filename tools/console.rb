require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end


irina = Passenger.new("Irina")
marie = Passenger.new("Marie")
drew = Driver.new("Drew")
bean = Driver.new("Bean")
ride1 = Ride.new("driver", "passenger", "distance")

# Put your variables here~!

binding.pry
