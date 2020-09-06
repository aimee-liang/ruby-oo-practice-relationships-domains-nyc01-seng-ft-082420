class Ingredient
    attr_accessor :dessert, :name
    attr_reader :calorie_count

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert_ingredients
        DessertIngredient.all.select{|d_i| d_i.ingredient == self}
    end

    def dessert
        self.dessert_ingredients.map{|d_i| d_i.dessert}
    end

    def bakeries
        self.dessert.map{|dessert| dessert.bakery}
    end

    def self.find_all_by_name(ingredient)
        self.all.select do |ingredient_instance| 
            ingredient_instance.name.include?(ingredient)
        end
    end

end