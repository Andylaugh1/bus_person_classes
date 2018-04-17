class Bus

  attr_reader :number, :destination

  def initialize(number, destination)
    @number = number
    @destination = destination
    @passengers = []
  end

  # def get_number
  #   return @number
  # end

  def drive_bus(noise)
    return "#{noise}!"
  end

  def passenger_count()
    return @passengers.count
  end

  def add_passenger(person)
      @passengers << person
  end

  def drop_passenger(person)
    @passengers.delete(person)
  end

  def empty_bus()
    @passengers = []
  end

end
