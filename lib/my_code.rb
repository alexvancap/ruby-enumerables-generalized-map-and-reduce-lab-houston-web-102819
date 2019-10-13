def map(source_array)
  new_array = []
  counter = 0
  while source_array[counter] do
    new_array << yield(source_array[counter])
    counter += 1
  end
  return new_array
end



def reduce(source_array, starting_point = 0)
counter = 0
value = true
total = 0

  if starting_point != 0
    total = starting_point
  end
  while source_array[counter] do
    if source_array[counter].is_a?(Integer)
      if (counter == source_array.length) && (value == true)
        return true
      else
      total = yield(total, source_array[counter])
      value = true
    end
    counter += 1
  end

  return total
end
