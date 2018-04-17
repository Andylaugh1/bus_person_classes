require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class PersonTest < MiniTest::Test
  def setup

    @person1 = Person.new("Juan", 33)
    @person2 = Person.new("Andy", 34)

  end


end
