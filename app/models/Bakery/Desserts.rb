class Desserts

    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    # need to create method to have access
    def dessert_ingredient
        Dessert_Ingredient.all.select{|element| element.dessert == self}
    end

    def ingredients
        
    end

    def bakery
    end

    def calories #review
        # return total calories for ingredients in this dessert
        total_calories = 0
        # go into self, look at ingredients and iterate through
        self.ingredients.each do |calorie_count|
            calorie_count += total_calories
        end
        total_calories.to_f
    end

end