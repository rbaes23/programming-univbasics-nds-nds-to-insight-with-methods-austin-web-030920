$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total = 0
  movies_index = 0
  while movies_index < director_data[:movies].length do
    total += director_data[:movies][movies_index][:worldwide_gross]
    movies_index += 1
  end
  total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  totals = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index]
    totals[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  totals
end


# def directors_totals(nds)
#   director_index = 0
#   totals = {}
#   while director_index < nds.length do 
#     director_name = nds[director_index][:name]
#     totals[director_name] = 0
#     movie_index = 0 
#     while movie_index < nds[director_index][:movies].length do 
#       totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
#       movie_index += 1 
#     end 
#     director_index += 1 
#   end 
#   totals 
# end