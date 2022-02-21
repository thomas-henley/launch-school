# 1 Searching 101
data_set = Array.new(5) { rand(1..20) }
target = rand(1..20)
test_insert = (data_set.include? (target)) ? 'appears' : 'does not appear'
puts "1. The number #{target} #{test_insert} in #{data_set}."
puts

# 2 Arithmetic Integer
puts "2."
num1, num2 = rand(1..30), rand(1..30)
ops = %i(+ - * / % **)
for op in ops do
  puts "#{num1} #{op} #{num2} = #{num1.send(op, num2)}"
end
puts

# 3 Counting the Number of Characters
input = "walk, don't run"
puts "3. There are #{input.delete(' ').length} characters in \"#{input}\"." 

# 4 Multiplying Two Numbers
def multiply(first, second)
  first * second
end

# 5 Squaring an Argument
def square(num)
  multiply(num, num)
end

puts "5. ERROR" unless square(5) == 25
puts "5. ERROR" unless square(-8) == 64

# 6 Exclusive Or
def xor?(a, b)
  !!a != !!b
end

puts "6. ERROR" unless xor?(5.even?, 4.even?) == true
puts "6. ERROR" unless xor?(5.odd?, 4.odd?) == true
puts "6. ERROR" unless xor?(5.odd?, 4.even?) == false
puts "6. ERROR" unless xor?(5.even?, 4.odd?) == false

# 7 Odd Lists
def oddities(arr)
  res = []
  arr.each_with_index { |elem, ind| res << elem if ind.even? }
  res
end

puts "7. ERROR" unless oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts "7. ERROR" unless oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts "7. ERROR" unless oddities(['abc', 'def']) == ['abc']
puts "7. ERROR" unless oddities([123]) == [123]
puts "7. ERROR" unless oddities([]) == []

# 8 Palindromic Strings
def palindrome?(str)
  str == str.reverse
end

puts "8. ERROR" unless palindrome?('madam') == true
puts "8. ERROR" unless palindrome?('Madam') == false          # (case matters)
puts "8. ERROR" unless palindrome?("madam i'm adam") == false # (all characters matter)
puts "8. ERROR" unless palindrome?('356653') == true

# 9. Palindromic Strings (Pt. 2)
def real_palindrome?(str)
  palindrome?(str.downcase.delete('^a-z0-9'))
end

puts "9. ERROR" unless real_palindrome?('madam') == true
puts "9. ERROR" unless real_palindrome?('Madam') == true           # (case does not matter)
puts "9. ERROR" unless real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts "9. ERROR" unless real_palindrome?('356653') == true
puts "9. ERROR" unless real_palindrome?('356a653') == true
puts "9. ERROR" unless real_palindrome?('123ab321') == false

# 10 Palindromic Numbers
def palindromic_number?(num)
  palindrome?(num.to_s)
end

puts "10. ERROR" unless palindromic_number?(34543) == true
puts "10. ERROR" unless palindromic_number?(123210) == false
puts "10. ERROR" unless palindromic_number?(22) == true
puts "10. ERROR" unless palindromic_number?(5) == true
