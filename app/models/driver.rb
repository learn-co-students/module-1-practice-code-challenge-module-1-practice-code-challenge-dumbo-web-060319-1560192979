class Driver
@@all = []
attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def name
  @name
end

def self.all
  @@all
end

def passenger_names
  self.rides.map {|ride| ride.passengers}
end

def rides
  Ride.all.select {|ride| ride.driver == self}
end


end
