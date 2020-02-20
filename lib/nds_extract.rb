$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  row_index = 0
  result = {} 
  while row_index < nds.length do
    inner_index = 0
    total = 0
    while inner_index< nds[row_index][:movies].length do
      total += nds[row_index][:movies][inner_index][:worldwide_gross]
      inner_index += 1
    end
    sausage = {nds[row_index][:name] => total}
    result.merge!(sausage)
    row_index +=1
  end
return result
end

directors_totals(directors_database)

#pp directors_database

  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"