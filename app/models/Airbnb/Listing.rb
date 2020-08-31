class Listing

    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    # returns an array of all guests who have stayed at a listing
    def guests
        Trip.all.filter {|trip| trip.listing == self}.filter{|trip| trip.guest}
    end

    def trips
        # return array of all trips in listing
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        # return number of trips taken to listing
        self.trips.count
    end

    def self.all
        @@all 
    end

    def self.find_all_by_city(city)
        self.all.find_all {|listing| listing.city == city}
    end

    def self.most_popular
        # find listign that has most trips
        most_travelled = self.all.map {|listing| listing.trip_count}.max
        self.all.find_all do |listing| 
            listing.trip_count == most_travelled
        end
    end

end