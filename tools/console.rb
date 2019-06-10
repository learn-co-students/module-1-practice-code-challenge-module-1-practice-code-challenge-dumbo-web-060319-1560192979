require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

kev = Passenger.new("Kevin")
t = Passenger.new("Tony")
grace = Passenger.new("Grace")
bran = Passenger.new("Brendon")
bet = Passenger.new("Beto")

ab = Driver.new("Abril")
gar = Driver.new("Garrett")
rich = Driver.new("Richard")
jus = Driver.new("Justin")
al = Driver.new("Ali")

ride1 = Ride.new(ab, kev, 10)
ride2 = Ride.new(gar, t, 100)
ride3 = Ride.new(rich, grace, 45)
ride4 = Ride.new(jus, bran, 5000)
ride5 = Ride.new(al, bet, 97)
ride6 = Ride.new(al, grace, 1)
ride7 = Ride.new(ab, t, 56)
ride8 = Ride.new(rich, kev, 45)
ride9 = Ride.new(gar, bran, 179)
ride10 = Ride.new(jus, bet, 5)

binding.pry
