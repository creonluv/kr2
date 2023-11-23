module Printable
  def print_info
    puts "\nClass: #{self.class}"
    instance_variables.each do |var|
      puts "Var #{var}: #{instance_variable_get(var)}"
    end
  end
end

# Використання Printable
class Person
  include Printable

  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

class Car
  include Printable

  attr_accessor :brand, :model, :year

  def initialize(brand, model, year)
    @brand = brand
    @model = model
    @year = year
  end
end

person = Person.new("Ivan", 19, "Male")
car = Car.new("Honda", "Civic Type R", 2022)

# Виклик print_info модуля Printable
person.print_info
car.print_info