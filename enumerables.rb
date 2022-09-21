require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_names_array = spicy_foods.map do |str|
    str[:name]
  end
end

def spiciest_foods(spicy_foods)
  spiciest_array = spicy_foods.filter { |str| str[:heat_level] > 5}
end

def print_spicy_foods(spicy_foods)
  new_array = spicy_foods.each do |str|
    puts "#{str[:name]} (#{str[:cuisine]}) | Heat Level: #{'🌶' * str[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  sorted_cuisine_array = spicy_foods.find { |food| food[:cuisine] == cuisine }
end

def sort_by_heat(spicy_foods)
  sorted_heat_hash = spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  new_spicy_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(new_spicy_foods)
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  spice_level = spicy_foods.map do |food|
    food[:heat_level]
  end
average_heat = spice_level.sum / 3
end
