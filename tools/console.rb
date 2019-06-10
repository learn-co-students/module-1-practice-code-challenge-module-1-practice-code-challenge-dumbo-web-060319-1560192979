require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end


richard = Passenger.new("Richard")
hamza = Passenger.new("Hamza")
abdul = Passenger.new("Abdul")
alex = Passenger.new("Alex")

garret = Driver.new("Garrett")
irina = Driver.new("Irina")
dom = Driver.new("Dominic")
samip = Driver.new("Samip")

ride1 = Ride.new(garret, richard, 10.3)
ride2 = Ride.new(irina, hamza, 105)
ride3 = Ride.new(irina, richard, 9.1)
ride4 = Ride.new(garret, alex, 42.2)


binding.pry
