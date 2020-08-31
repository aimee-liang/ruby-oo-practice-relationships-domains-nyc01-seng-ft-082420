class Dessert_Ingredient

    attr_accessor :desserts, :ingredients

    @@all = []

    def initialize (desserts, ingredients)
        @desserts = desserts
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end

end