#1
arr = ['10', '11', '9', '7', '8']
puts '#1'
print arr.sort { |a, b| b.to_i <=> a.to_i }
puts

#2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

puts '#2'
print books.sort_by { |book| book[:published] }
puts

#5/6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

puts '#5/#6'
sum = 0
munsters.each do |name, munster|
  puts "#{name} is a #{munster['age']}-year-old #{munster['gender']}."
  sum += munster['age'] if munster['gender'] == 'male'
end
puts "The men cumulatively share #{sum} years."

#8
puts '#8'
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
hsh.each do |k, arr|
  arr.each do |word|
    print word.delete('^aeiou')
  end
end
puts

#9
puts '#9'
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
print arr.map { |sub_arr| sub_arr.sort.reverse }
puts

#10
puts '#10'
print [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map { |hsh| hsh.each { |k, v| hsh[k] += 1 } }
puts

#11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
puts '#11'
print arr.map { |sub_arr| sub_arr.select { |elem| elem % 3 == 0 } }
puts

#12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

puts '#12'
print arr.each_with_object({}) { |pair, hsh| hsh[pair.first] = pair.last }
puts

#13
puts '#13'
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
print arr.sort_by { |sub_arr| sub_arr.select { |num| num.odd? } }
puts

#14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

puts '#14'
res = hsh.map do |_, v|
  if v[:type] == 'fruit'
    v[:colors].map { |color| color.capitalize }
  else
    v[:size].upcase
  end
end
print res

puts '#16'
def random_hex(len)
  res = ''
  len.times { res << '0123456789abcdef'.chars.sample }
  res
end

def get_uuid
  [random_hex(8), random_hex(4), random_hex(4), random_hex(4), random_hex(12)].join '-'
end

puts get_uuid

