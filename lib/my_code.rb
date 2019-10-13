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
total = starting_point / source_array.length
boolean = true

  while source_array[counter] do
    total += source_array[counter]
    counter += 1
  end
    return yield(total, source_array[counter])
end

source_array = [1, 2, 3, 4]
p reduce(source_array){|memo, n| memo + n}
