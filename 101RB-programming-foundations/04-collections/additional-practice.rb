#1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
res = {}
flintstones.each_with_index do |elem, ind|
  res[elem] = ind
end
puts "1. #{res}"

#2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts "2. #{ages.values.inject(:+)}"

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts "3. #{ages.reject! { |_, v| v >= 100 }}"

#4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts "4. #{ages.values.min}"

#5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "5. #{flintstones.find_index { |name| name.start_with? "Be" }}"

#6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "6. #{ flintstones.map! { |name| name[0..2] } }"

#7
statement = "The Flintstones Rock"
puts "7. #{statement.delete("^A-Za-z").chars.each_with_object(Hash.new(0)) { |c, hsh| hsh[c] += 1 }}"

#9
def titleize(str)
  str.split.map(&:capitalize).join(' ')
end

words = "the flintstones rock"
puts "9. #{titleize(words)}"

#10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def get_age_group(age)
  if age < 18
    'kid'
  elsif age < 65
    'adult'
  else
    'senior'
  end
end

munsters.each do |name, stats|
  stats['age_group'] = get_age_group(stats['age'])
end

puts "10. #{munsters}"
