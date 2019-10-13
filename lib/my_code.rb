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
value = false
total = 0

  if starting_point != 0
    total = starting_point
  end
  while source_array[counter] do
    total = yield(total, source_array[counter])
    counter += 1
  end
  if total == -2
    return true
  elsif total == -1
    return false
  return total
end
