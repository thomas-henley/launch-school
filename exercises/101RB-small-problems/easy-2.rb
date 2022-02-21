# 1 How old is Teddy?
age = rand(20..200)
puts "1. Teddy is #{age} years old!"

# 2 How big is the room?
METER_TO_FOOT = 3.28
puts "2. The area of a #{length = rand(3..20)} x #{width = rand(3..20)} room is #{length * width * 1.0} sq. meters (#{(length * width * 3.28**2).truncate(2)} sq. ft.)."

# 3 Tip Calculator
bill = rand(5..500)
tip_rate = rand(5..25)
tip = (bill * tip_rate / 100.0)
puts "3. A bill of #{bill} with a tip rate of #{tip_rate}% will need a tip of $#{format("%.2f", tip)}."

# 4 When will I retire?
current_age = rand(20..60)
current_year = Time.now.year
retirement_age = rand(60..80)
years_left = retirement_age - current_age
retirement_year = current_year + years_left
puts "4. A #{current_age}-year-old in #{current_year} who wants to retire at #{retirement_age} has #{years_left} years left and will retire in #{retirement_year}."

# 5 Greeting a user
suffix = ['.', '!'].sample
name = "Thomas" + suffix
print "5. \"Hello, my name is #{name}\" "
if name[-1] == '!'
  puts "\"HELLO #{name[0..-2].upcase}. WHY ARE WE SCREAMING?\""
else
  puts "\"Hello #{name[0..-2]}.\""
end

# 6 Odd Numbers
print "6. "
(1..99).step(2) { |i| print "#{i} " }
puts

# 7 
print "7. "
(2..99).step(2) { |i| print "#{i} " }
puts

# 8

num = rand(1..20)
op = %w(+ *).sample
result = (op == '+') ? (1..num).reduce(:+) : (1..num).inject(:*)
res_type = (op == '+') ? 'sum' : 'product'
puts "8. The #{res_type} of the integers between 1 and #{num} is #{result}."

#9.
puts "9."

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# These are different because "name" gets assigned to a new string object.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# Name and save_name are still assigned to the same string object, so mutating the object affects both.

#10.
puts "10. "
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
# What will the following code print, and why?

