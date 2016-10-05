class Car

  attr_reader :type, :speed, :fuel

  def initialize(type, engine)
    @type = type
    @speed = 0
    @fuel = 100
    @engine = engine
  end

  def accelerate
    @speed += @engine.acceleration
    @fuel -= @engine.fuel_use
  end


  def brake
    if @speed > 0
      reduced_speed = @speed -= 10
    else
      reduced_speed = @speed
    end
    return reduced_speed
  end


end 

