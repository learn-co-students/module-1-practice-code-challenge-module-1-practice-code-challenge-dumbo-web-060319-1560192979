class Ride
	attr_reader :driver, :passenger, :distance

	@@all = []
	
	def initialize(passenger, driver, distance)
		@driver = driver
		@passenger = passenger
		@distance = distance
		@@all << self
	end

	def self.average_distance
		all.map {|r| r.distance}.sum / all.length
	end

	def self.all
		@@all
	end
end