require('rspec')
require('./lib/favorite_cities')

describe(City) do
  describe(".all") do
    it("is empty at first") do
      expect(City.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves an city to the list of cities") do
      city = City.new("Seattle")
      city.save()
      expect(City.all()).to(eq([city]))
    end
  end

  # describe(".clear") do
  #   it("clears all items from the list") do
  #     item = City.new("Seattle")
  #     item.save()
  #     City.clear()
  #     expect(City.all()).to(eq([]))
  #   end
  # end

  describe(".clear") do
    it("clears all items from the list") do
      item = City.new("Buenos Ares")
      item.save()
      City.clear()
      expect(City.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new item is added") do
      item = City.new("Seattle")
      item.save()
      item2 = City.new("Seattle")
      item2.save()
      expect(item.id()).to(eq(1))
      expect(item2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds an item based on its id") do
      City.clear()
      item = City.new("San Fran")
      item.save()
      item2 = City.new("Pyeonchang")
      item2.save()
      expect(City.find(1)).to(eq(item))
      expect(City.find(2)).to(eq(item2))
    end
  end


end
