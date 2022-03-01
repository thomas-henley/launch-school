def reduce(arr, acc = nil)
  count = 0

  if acc.nil?
    acc = arr.first
    count += 1
  end

  while count < arr.size
    acc = yield(acc, arr[count])
    count += 1
  end

  acc
end

array = [1, 2, 3, 4, 5]

print reduce(array) { |acc, num| acc + num }                    # => 15
puts
print reduce(array, 10) { |acc, num| acc + num }                # => 25
puts
# reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
puts
print reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
puts
print reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
puts
