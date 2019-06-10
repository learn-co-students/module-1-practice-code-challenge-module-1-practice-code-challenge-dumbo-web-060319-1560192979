
class Passenger 

    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name 
        @@all << self
    end

    def rides 
        x=Ride.all 
        
        x.select do |rider|
            rider.passenger == self 
        end
    end

    def drivers 
        x=Ride.all 
        myArr=[]
        count = 0 
        while (count < x.size)
            if x[count].passenger == self 
                myArr.push(x[count].driver)
            end
            count = count + 1
        end
        return myArr 

    end 

    def total_distance
        total = 0 
        x = Ride.all 
        x.each do |rider|
            if rider.passenger == self 
                total = total + rider.distance 
            end
        end
        return total
    end

    def self.all
        return @@all 
    end

    def self.premium_members 
        myArr=[]
        x= @@all
        count = 0 
        while (count < @@all.size)

            currentPass=x[count]
            if currentPass.total_distance > 100 
                myArr.push(currentPass)
            end
            count = count + 1
        end
        return myArr
    end 
end