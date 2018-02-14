require('rspec')
require('pry')

class City
  @@list = []

  attr_accessor :cityname # is both a reader and writer method, allows us to read @cityname 

  def initialize(city)
    @cityname = city
  end # initialize

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  # def self.clear()
  #   @@list = []
  # end

end # class City
