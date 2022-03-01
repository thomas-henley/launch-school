require 'minitest/autorun'
require 'minitest/reporters'
require 'simplecov'

Minitest::Reporters.use!
SimpleCov.start

require_relative 'car'

class CarTest < MiniTest::Test
  def test_wheels
    car = Car.new
    assert_equal(4, car.wheels)
  end

  def test_bad_wheels
    skip
    car = Car.new
    assert_equal(3, car.wheels)
  end
end