require('minitest/autorun')
require('minitest/rg')
require_relative('../cars')
require_relative('../engines')

class TestCars < MiniTest::Test

  def setup

    @regular = Engine.new(15, 10)
    @turbo = Engine.new(25, 15)
    @hybrid = Engine.new(10, 5)
    @time_machine = Engine.new(5, -5)

    @minty = Car.new("Volkswagon", @regular)
    @caroline = Car.new("Mercedes", @turbo)
    @ders = Car.new("Volvo", @hybrid)
    @scooby = Car.new("Mystery Machine", @time_machine)

  end

  def test_car_has_type
    assert_equal("Volkswagon", @minty.type)
  end

  def test_car_starts_at_0_speed
    assert_equal(0, @scooby.speed)
  end

  def test_car_starts_at_100_fuel
    assert_equal(100, @caroline.fuel)
  end 

  def test_accelerating_car_increases_speed
    @minty.accelerate
    assert_equal(15, @minty.speed)
  end

  def test_accelerating_car_reduces_fuel
    @minty.accelerate
    assert_equal(90, @minty.fuel)
  end

  def test_accelerating_car_increases_speed_and_reduces_fuel
    @caroline.accelerate
    assert_equal(25, @caroline.speed)
    assert_equal(85, @caroline.fuel)
  end






end