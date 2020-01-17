$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  final_hash = {}
  directors_index = 0
  total_gross = 0
  current_total = 0
  
  while directors_index < director_data.length do
    movies_index = 0
    while movies_index < director_data[directors_index][:movies].length do
      current_total += director_data[directors_index][:movies][movies_index][:worldwide_gross]
      currentname = (director_data[directors_index][:name]).to_s
      total_gross += director_data[directors_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
      final_hash[currentname] = current_total
      ##binding.pry
      end
    current_total = 0  
    directors_index += 1
  end
  
  
#  director_index = 0
#  director_total = 0
#  directors_grosses = []
#  binding.pry
#  while director_index < director_data[:movies].length do
#    movie_gross_index = 0
#    while movie_gross_index < director_data[director_index].length
#    director_total += director_data[:movies][director_index][:worldwide_gross]
#    movie_gross_index += 1
#
#    end
#  directors_grosses[:director_index] = director_total
#  director_total = 0
#  director_index += 1
#  end
#
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
