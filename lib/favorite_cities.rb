require('rspec')
require('pry')

class City
  @@list = []
  attr_reader :id
  attr_accessor :cityname # is both a reader and writer method, allows us to read @cityname

  def initialize(city)
    @cityname = city
    @id = @@list.length + 1
  end # initialize

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.find(id)
    item_id = id.to_i()
    @@list.each do |x|
      if x.id == item_id
        return x
      end
    end # each
  end  # self.find

end # class City
