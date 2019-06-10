
class Driver 
    attr_accessor :name
    @@all = []
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
    def passenger_names 
        x = Ride.all 
        myArr=[]
        count = 0 
        while (count < x.size)
            if x[count].driver ==self 
                myArr.push(x[count].passenger)
            end
            count = count + 1
        end
        return myArr.uniq!
    end

    def rides 
        x=Ride.all 
        x.select do |ridee|
            ridee.driver == self 
        end
    end

    def self.all 
        @@all 
    end

    def self.mileage_cap(distance)
        myArr= [] 
        x=Ride.all 
        count = 0 
        while (count < x.size)
            if (x[count].distance > distance )
                myArr.push(x[count])
            end
            count = count + 1
        end
        return myArr

    end 

end