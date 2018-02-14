require('rspec')
require('pry')

class City
  @@list = []

  attr_accessor :name # is both a reader and writer method

  def self.all()
    @@list
  end

end # class City

# def initialize(city)
#   @random = city
# end # initialize
