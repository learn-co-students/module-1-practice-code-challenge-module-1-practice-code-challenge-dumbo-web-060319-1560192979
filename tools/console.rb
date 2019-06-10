require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
brandon = Passenger.new("brandon")
sean = Passenger.new("sean")
tony = Driver.new("tony")
kevin = Driver.new("kevin")
gracie = Passenger.new("gracie")
mama = Passenger.new("mama")
Ride.new(tony,brandon,10)
Ride.new(tony,brandon,20)
Ride.new(tony,brandon,30)
Ride.new(kevin,sean,300)
Ride.new(tony,gracie,600)
Ride.new(tony,mama, 900)


binding.pry
