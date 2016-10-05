class Engine

attr_reader :acceleration, :fuel_use

  def initialize(acceleration, fuel_use)
    @acceleration = acceleration
    @fuel_use = fuel_use
  end

end