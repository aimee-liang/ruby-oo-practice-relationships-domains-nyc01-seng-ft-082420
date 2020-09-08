class Guest

    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def listings
        # Trip.all.filter{|trip| trip.guest == self}.map{|trip| trip.listing}
        self.trips.map{|trip| trip.listing}
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller 
        self.all.filter {|self| self.trip_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.find_all {|guest| guest.name == name}
    end

end