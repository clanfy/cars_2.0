require('minitest/autorun')
require('minitest/rg')
require_relative('../engines')

class TestEngine < Minitest::Test

  def setup
    @regular = Engine.new(10, 10)
    @turbo = Engine.new(25, 15)
    @hybrid = Engine.new(10, 5)
    @time_machine = Engine.new(5, -5)
  end

  def test_get_engine_acceleration
    assert_equal(10, @regular.acceleration)
    assert_equal(5, @time_machine.acceleration)
  end

  def test_get_fuel_intake
    assert_equal(15, @turbo.fuel_use)
    assert_equal(-5, @time_machine.fuel_use)
  end
end