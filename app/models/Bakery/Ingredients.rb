class Ingredients
    attr_accessor :desserts

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def dessert
        # returns a dessert object for the ingredient instance
    end

    def bakery
        # return bakery object for the bakery that uses this ingredient
    end

    def self.all
        @@all
    end

    # def self.find_all_by_name(ingredient)
    # end

end