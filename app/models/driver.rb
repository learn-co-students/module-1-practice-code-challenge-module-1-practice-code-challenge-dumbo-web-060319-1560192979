class Driver
	attr_reader :name

	@@all = []
	
	def initialize(name)
		@name = name
		@@all << self
	end

	def rides
		Ride.all.select {|r| r.driver == self}
	end

	def total_distance
		rides.map {|r| r.distance}.sum
	end

	def passenger_names
		rides.map {|r| r.passenger}.uniq
	end

	def self.all
		@@all
	end

	def self.mileage_cap(distance)
		all.select {|r| r.total_distance > distance}
	end
end