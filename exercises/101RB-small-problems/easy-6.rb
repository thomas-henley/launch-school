require './exercise_helpers.rb'

#1 Cute Angles
DEGREE = "\xC2\xB0"

def dms(angle)
  degree = angle.floor
  angle -= degree
  minutes, seconds = (angle * 3600).divmod(60).map(&:floor)
  sprintf("%d%s%02d'%02d", degree, DEGREE, minutes, seconds)
end

# run_tests %(dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00"))

#2 Delete vowels

def remove_vowels(strings)
  strings.map { |str| str.delete('aeiouAEIOU') }
end

run_tests %(remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ'])

#3 Fibonacci Number Location by Length
def find_fibonacci_index_by_length(len)
  return 1 if len == 1
  prev, current, index = 1, 1, 2
  until current.to_s.length >= len
    prev, current = current, prev + current
    index += 1
  end
  index
end

run_tests %(find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476)
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847)
  
#4 Reversed Arrays p1
def reverse!(list)
  return list if list.length < 2
  
  index = 0
  other = list.length - 1
  until other <= index
    list[index], list[other] = list[other], list[index]
    index += 1
    other -= 1
  end
  list
end

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

#5 Reverse Arrays
def reverse(list)
  return list if list.length < 2
  
  res = []
  list.reverse_each { |elem| res << elem }
  res
end

# puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
# puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# puts reverse(['abc']) == ['abc']              # => true
# puts reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# puts list.object_id != new_list.object_id  # => true
# puts list == [1, 3, 2]                     # => true
# puts new_list == [2, 3, 1]                 # => true

#6 Combining Arrays
def merge(arr1, arr2)
  [arr1, arr2].flatten.uniq
end

run_tests %(merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9])

#7 Halvsies
