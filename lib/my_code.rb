def map(source_array)
  fnl_array = []
  i = 0
  while i < source_array.length do
    fnl_array[i] = yield(source_array[i])
    i += 1
  end
  fnl_array
end

def reduce(source_array, starting_point = nil)
  i = 0
  if starting_point
    total = starting_point
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end
  total
end