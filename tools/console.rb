require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
#passenger
samip=Passenger.new("samip")
ali=Passenger.new("ali")
ram=Passenger.new("ram")
#driver
francis=Driver.new("francis")
alex=Driver.new("alex")
shyam=Driver.new("shyam")
#rides
ride1=Ride.new(francis,samip,90)
ride2=Ride.new(alex,samip,89)
ride3=Ride.new(francis,ali,50)
ride4=Ride.new(alex,ali,2)
ride5=Ride.new(shyam,ram,1000)

binding.pry
