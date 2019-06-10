require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Put your variables here~!

Abdul = Driver.new("Abdul")
Justin = Driver.new("Justin")
Francis = Driver.new("Francis")

Tony = Passenger.new("Tony")
Tony.rides = [ride1]

Kevin = Passenger.new("Kevin")
Kevin.rides = [ride2]

Gracie = Passenger.new("Gracie")
Kevin.rides = [ride3]

ride1 = Ride.new(Abdul, Tony, 53.4)
ride2 = Ride.new(Justin, Kevin, 22)
ride3 = Ride.new(Francis, Gracie, 11.4)

binding.pry
