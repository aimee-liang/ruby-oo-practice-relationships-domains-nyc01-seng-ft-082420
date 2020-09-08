class Listing

    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def trips 
        Trip.all.select {|trip| trip.listing == self}
    end

    # returns an array of all guests who have stayed at a listing
    def guests
        # Trip.all.filter {|trip| trip.listing == self}.select{|trip| trip.guest}
        # Trip.all.filter{|trip| trip.listing == self}.map{|trip| trip.guest}
        self.trips.map{|trip| trip.guest}
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all 
    end

    def self.find_all_by_city(city)
        self.all.find_all {|listing| listing.city == city}
    end

    def self.most_popular
        most_travelled = self.all.map {|listing| listing.trip_count}.max
        self.all.find_all do |listing| 
            listing.trip_count == most_travelled
        end
    end

end