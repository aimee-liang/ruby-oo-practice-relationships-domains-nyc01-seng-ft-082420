class Dessert

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

    def dessert_ingredients
        DessertIngredient.all.select{|d_i| d_i.dessert == self}
    end

    def ingredients
        self.dessert_ingredients.map{|d_i| d_i.ingredient}
    end

    def calories
        total = self.dessert_ingredients.sum{|d_i| d_i.calorie_count}
        if total = 0
            return nil
        end
        total
    end

end