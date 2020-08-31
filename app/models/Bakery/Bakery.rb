class Bakery

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    # def ingredients
    #     # go to bakery desserts and create an array of ingredients
    # end

    # def desserts
    # end

    def average_calories
        # return total average num of calories for desserts sold at this bakery
    end

    def shopping_list
        # return string of names for ingredients at bakery
        # use split and to string methods?
    end

end