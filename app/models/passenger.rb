class Passenger

@@all = []
attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def name
  @name
end

def rides
  Ride.all.select {|ride| ride.passenger == self}
end

def drivers
  self.rides.map {|ride| ride.driver}
end

def total_distance
  array = self.rides.map {|ride| ride.distance}
  sum = 0
  array.each do |i|
  sum += i
end
return sum
end

def self.premium_members
  self.rides.select {|ride| ride.distance > 100}
end


end
