require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')

class BusTest < MiniTest::Test

  def setup
    @bus1 = Bus.new("22", "Ocean Terminal")
    @person1 = Person.new("Juan", 33)
    @person2 = Person.new("Andy", 34)
  end

  def test_bus_number
    assert_equal("22", @bus1.number)
  end

  def test_drive_bus
    bus_noise = @bus1.drive_bus("Brum brum")
    assert_equal("Brum brum!", bus_noise)
  end

  def test_passengers_on_bus
    passenger_on_bus = @bus1.passenger_count()
    assert_equal(0, passenger_on_bus)
  end

  def test_add_a_passenger
    @bus1.add_passenger(@person1, @person2)
    assert_equal(2, @bus1.passenger_count)
  end

  def test_drop_off_passenger
    @bus1.add_passenger(@person1, @person2)
    @bus1.drop_passenger(@person2)
    assert_equal(1, @bus1.passenger_count)
  end

  def test_empty_the_bus
    @bus1.add_passenger(@person1, @person2)
    @bus1.empty_bus()
    assert_equal(0, @bus1.passenger_count)
  end

end
