require('rspec')
require('pry')

class City
  @@list = []
  attr_reader :id
  attr_accessor :cityname # is both a reader and writer method, allows us to read @cityname
  attr_accessor :rank

  def initialize(city, rank)
    @cityname = city
    @id = @@list.length + 1
    @rank = rank
  end # initialize

  def self.sort()
    @@list.sort_by! {|class_object| class_object.rank}
  end

  def self.clear()
    @@list = []
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
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
