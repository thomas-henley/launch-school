numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice

#4
numbers = [1, 2, 3, 4, 5]

p numbers.delete_at(1)
p numbers.delete(1)

#5
p (10..100).include?(42)
p (10..100).include?(420)

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.match?("dino")

statement = "The Flintstones Rock!"
p statement.count "t"

p statement.center(50)