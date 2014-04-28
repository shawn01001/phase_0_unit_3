# U3.W7: Build an Electronic Grocery List!
 
# Your full names: 
# 1. Danielle
# 2. Shawn
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add grocery items to the list.
# As a user, I want to have the ability to delete items from list.
# As a user, I want to have the ability to categorize.
# As a user, I want to have the ability to add quantity of items.
# As a user, I want to have the ability to assign order number.
 
# Pseudocode
# Define class 'GroceryList'
#   Define #initialize
#     Create blank array or hash
#   Define #add_item
#     Arguments require item, category and quantity (3 total)
#   Define #scratch_item
 
# Your fabulous code goes here....
#=> << = .push for array or .concat for string

class GroceryList
  def initialize
    @grocery_list = Array.new
  end
  
  def add_item(grocery_item)
    @grocery_list << grocery_item
    
  end

  def scratch_item(grocery_item)
    @grocery_list.delete (grocery_item)
   
  end
end

class Food
  attr_reader :food, :category, :quantity
  def initialize(food, category, quantity)
    unless food.is_a?(String) || category.is_a?(String)
      raise ArgumentError.new("food and category must be in string form.")
    end
    @food = food
    @category = category
    @quantity = quantity
  end
end

# list = GrocerList.new
# strawberry = Food.new("strawberry".....
# list.add('strawberry', 'produce', 5)

list = GroceryList.new
strawberry = Food.new("straw", "produce", 3)
list.add_item(strawberry)
list.scratch_item(strawberry)


# DRIVER CODE GOES HERE. 