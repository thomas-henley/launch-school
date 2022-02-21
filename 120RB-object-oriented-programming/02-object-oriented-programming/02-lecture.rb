class Person
  attr_accessor :first_name, :last_name

  def initialize(name)
    self.name= name
  end

  def name
    "#{first_name} #{last_name}"
  end

  def name=(name)
    self.first_name, self.last_name = name.split
  end

  def to_s
    name
  end

end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
puts bob.first_name            # => 'John'
puts bob.last_name             # => 'Adams'

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

puts bob