$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_index = 0
  director_total = 0
  directors_grosses = []
      binding.pry
  while director_index < director_data[:movies].length do
    movie_gross_index = 0
    while movie_gross_index < director_data[director_index].length
    director_total += director_data[:movies][director_index][:worldwide_gross]
    movie_gross_index += 1

    end
    
  end
  directors_grosses[:director_index] = director_total
  director_total = 0
  director_index += 1
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
