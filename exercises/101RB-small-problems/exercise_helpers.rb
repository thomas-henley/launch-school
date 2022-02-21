require 'colorize'

### First draft, used in easy-4
def test test_statement
  test_statement.each_with_index do |test_case, num|
    puts "TEST FAILS at lineno #{caller_locations.last.lineno}, test case #{num}" unless test_case
  end
end

### Used from easy-5 on
def run_tests(test_string)
  failure_count = 0
  test_string.lines.each_with_index do |t, num|
    unless eval(t) # run the '==' test and report if it evaluates to false
      failure_count += 1
      puts "TEST FAILS at lineno #{caller_locations.last.lineno}, test case #{num}"
      call, expected = t.split(" == ")
      puts call
      puts "  expected: " + expected.green
      puts "       was: " + eval(call).to_s.red
      puts
    end
  end
  puts "Tests failed: #{failure_count}" if failure_count > 0
end
