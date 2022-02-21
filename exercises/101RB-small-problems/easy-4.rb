require './exercise_helpers.rb'

# 1 Short Long Short
def short_long_short(str1, str2)
  strings = [str1, str2].sort_by! { |str| str.length }
  strings[0] + strings[1] + strings[0]
end

test [
  short_long_short('abc', 'defgh') == "abcdefghabc",
  short_long_short('abcde', 'fgh') == "fghabcdefgh",
  short_long_short('', 'xyz') == "xyz"
]


# 2 What Century is That?
def century_suffix year
  if [11, 12, 13].include? year % 100
    return 'th'
  end
  
  case year.to_s[-1]
  when '1' then 'st'
  when '2' then 'nd'
  when '3' then 'rd'
  else 'th'
  end
end

def century year
  century = (year + 99) / 100
  return "#{century}#{century_suffix(century)}"
end

test [
  century(2000) == '20th',
  century(2001) == '21st',
  century(1965) == '20th',
  century(256) == '3rd',
  century(5) == '1st',
  century(10103) == '102nd',
  century(1052) == '11th',
  century(1127) == '12th',
  century(11201) == '113th',
]

# 3 Leap Years
def leap_year?(year)
  if year >= 1752
    (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  else
    year % 4 == 0
  end
end

test [
  leap_year?(2016) == true,
  leap_year?(2015) == false,
  leap_year?(2100) == false,
  leap_year?(2400) == true,
  leap_year?(240000) == true,
  leap_year?(240001) == false,
  leap_year?(2000) == true,
  leap_year?(1900) == false,
  leap_year?(1752) == true,
  # leap_year?(1700) == false,
  leap_year?(1) == false,
  # leap_year?(100) == false,
  leap_year?(400) == true,
]

# 4
test [
  leap_year?(2016) == true,
  leap_year?(2015) == false,
  leap_year?(2100) == false,
  leap_year?(2400) == true,
  leap_year?(240000) == true,
  leap_year?(240001) == false,
  leap_year?(2000) == true,
  leap_year?(1900) == false,
  leap_year?(1752) == true,
  leap_year?(1700) == true,
  leap_year?(1) == false,
  leap_year?(100) == true,
  leap_year?(400) == true,
]

# 5 Multiples of 3 and 5
def mod_3_or_5? num
  num % 3 == 0 || num % 5 == 0
end

def multisum num
  (1..num).inject(0) { |sum, elem| mod_3_or_5?(elem) ? (sum + elem) : sum }
end

test [
  multisum(3) == 3,
  multisum(5) == 8,
  multisum(10) == 33,
  multisum(1000) == 234168,
]

# 6 Running Totals
def running_total arr
  total = 0
  arr.map { |elem| total += elem }
end

test [
  running_total([2, 5, 13]) == [2, 7, 20],
  running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67],
  running_total([3]) == [3],
  running_total([]) == [],
]
