class MyCar
  attr_accessor :color
  attr_reader :year
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def accelerate(amount)
    @speed += amount
    puts "You accelerate #{amount} mph."
  end

  def brake(amount)
    @speed -= amount
    puts "You decelerate #{amount} mph."
  end

  def stop
    @speed = 0
    puts "Car is now stopped."
  end

  def spray_pain(color)
    self.color = color
    puts "Car is now #{color}."
  end

  def self.calculate_gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "gogo car"
  end

end

car = MyCar.new(1993, 'blue', 'mobile')
puts car