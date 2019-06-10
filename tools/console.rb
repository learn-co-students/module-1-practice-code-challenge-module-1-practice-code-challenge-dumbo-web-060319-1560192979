require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Put your variables here~!

passanger1 = Passenger.new("11111")
passanger2 = Passenger.new("22222")
passanger3 = Passenger.new("33333")
passanger4 = Passenger.new("44444")
passanger5 = Passenger.new("55555")
passanger6 = Passenger.new("44444")


driver1 = Driver.new("d11111")
driver2 = Driver.new("d22222")
driver3 = Driver.new("d33333")
driver4 = Driver.new("d44444")
driver5 = Driver.new("d55555")
driver6 = Driver.new("d44444")

ride1 = Ride.new(driver1, passanger1, 5.0)
ride2 = Ride.new(driver1, passanger2, 4.0)
ride3 = Ride.new(driver4, passanger1, 3.4)
ride4 = Ride.new(driver2, passanger5, 5.6)
ride5 = Ride.new(driver5, passanger4, 4.4)
ride6 = Ride.new(driver3, passanger3, )





binding.pry
