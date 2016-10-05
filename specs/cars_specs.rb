require('minitest/autorun')
require('minitest/rg')
require_relative('../cars')
require_relative('../engines')

class TestCars < MiniTest::Test

  def setup
    @regular = Engine.new(10, 10)
    @turbo = Engine.new(25, 15)
    @hybrid = Engine.new(10, 5)
    @time_machine = Engine.new(5, -5)

    @minty = Car.new("Volkswagon", 0, 100, @regular)
    @caroline = Car.new("Mercedes", 0, 100, @turbo)
    @ders = Car.new("Volvo", 0, 100, @hybrid)
    @scooby = Car.new("Mystery Machine", 0, 100, @time_machine)

  end





end