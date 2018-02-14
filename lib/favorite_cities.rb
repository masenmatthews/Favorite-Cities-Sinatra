require('rspec')
require('pry')

class City
  @@list = []

  attr_accessor :name # is both a reader and writer method

  def initialize(city)
    @cityname = city
  end # initialize

  def save()
    @@list.push(self)
  end

  def self.all()
    @@list
  end

end # class City
