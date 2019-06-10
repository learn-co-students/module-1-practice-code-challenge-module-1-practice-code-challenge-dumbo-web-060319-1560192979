require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sean = Driver.new("Sean")
arya = Driver.new("Arya Stark")
dill = Passenger.new("Dill")
jon = Passenger.new("Jon Snow")


ride1 = Ride.new(sean, dill, 6.66)
ride2 = Ride.new(arya, jon, 7)
ride3 = Ride.new(sean, dill, 900)


# Put your variables here~!

binding.pry
