require './exercise_helpers.rb'

# 1 ASCII String Value
def ascii_value(str)
  str.chars.reduce(0) { |sum, c| sum + c.ord }
end

run_tests "ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0"

# 2 After Midnight
def time_of_day(mins)
  hr, mn = mins.divmod(60)
  hr %= 24
  sprintf("%.2d:%.2d", hr, mn)
end

run_tests 'time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"'

# 3 After Midnight (pt. 2)

def after_midnight(time_str)
  hr, mn = time_str.split(':').map(&:to_i)
  (hr * 60 + mn) % 1440
end

def before_midnight(time_str)
  hr, mn = time_str.split(':').map(&:to_i)
  (1440 - (hr * 60 + mn)) % 1440
end

run_tests "after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0"

# 4 Letter Swap
def letter_swap(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  words.split.map { |w| letter_swap(w) }.join(' ')
end

run_tests "swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'"

# 5 Clean up the words
def cleanup(str)
  str.gsub(/[^a-zA-Z]/, ' ').squeeze(' ')
end

puts "ERROR in #5" unless cleanup("---what's my +*& line?") == ' what s my line '

# 6/7 Letter Counter
def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) { |word, hash| hash[word.delete('^a-zA-Z').length] += 1 }
end

run_tests "word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes(\"What's up doc?\") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}"

# 8 Alphabetical Numbers
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |num| NUMBER_WORDS[num] }
end

run_tests "alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]"
