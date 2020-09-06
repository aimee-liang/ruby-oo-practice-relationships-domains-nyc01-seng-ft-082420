require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


touslesjours = Bakery.new("Tous Les Jours")
maddies = Bakery.new("Maddie's")
freshbread = Bakery.new("Fresh Bread")

donuts = Desserts.new("Mochi donuts", touslesjours)
coffee = Desserts.new("Coffee cake", maddies)
cake = Desserts.new("Crepe cakes", touslesjours)
tiramisu = Desserts.new("Tiramisu", freshbread)
banana = Desserts.new("Banana bread", freshbread)

flour = Ingredients.new("flour", 50)
coffee = Ingredients.new("coffee", 25)
eggs = Ingredients.new("eggs", 75)
chocolate = Ingredients.new("chocolate", 100)
banana = Ingredients.new("banana", 15)

Pry.start
