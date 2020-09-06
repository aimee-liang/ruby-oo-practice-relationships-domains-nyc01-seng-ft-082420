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

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def ingredients
        self.desserts.map{|dessert| dessert.ingredient}
    end

    def average_calories
        self.ingredients.sum{|ingredient| ingredient.calorie_count} / self.ingredients.length
    end

    def shopping_list
        # map through ingredients method and create a new array for name, then join
        self.ingredients.map{|ingredient| ingredient.name}.join(", ")
    end

end