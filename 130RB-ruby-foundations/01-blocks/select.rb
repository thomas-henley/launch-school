def select(arr)
  res = []
  count = 0
  while count < arr.size
    elem = arr[count]
    res << elem if yield(elem)
    count += 1
  end
  res
end

array = [1, 2, 3, 4, 5]

print select(array) { |num| num.odd? }      # => [1, 3, 5]
puts
print select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
puts
print select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true
puts
