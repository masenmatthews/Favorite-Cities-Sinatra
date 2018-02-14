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
      city = City.new("Seattle", 1)
      city.save()
      expect(City.all()).to(eq([city]))
    end
  end

  describe(".clear") do
    it("clears all items from the list") do
      item = City.new("Buenos Ares", 2)
      item.save()
      City.clear()
      expect(City.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new item is added") do
      item = City.new("Seattle", 3)
      item.save()
      item2 = City.new("Seattle", 3)
      item2.save()
      expect(item.id()).to(eq(1))
      expect(item2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds an item based on its id", 4) do
      City.clear()
      item = City.new("San Fran", 1)
      item.save()
      item2 = City.new("Pyeonchang", 2)
      item2.save()
      expect(City.find(1)).to(eq(item))
      expect(City.find(2)).to(eq(item2))
    end
  end

  describe(".sort") do
    it("sorts cities by rank", 4) do
      City.clear()
      item = City.new("San Fran", 3)
      item.save()
      item2 = City.new("Pyonchang", 2)
      item2.save()
      item3 = City.new("Seattle", 1)
      item3.save()
      expect(City.sort()).to(eq([item3, item2, item]))
    end
  end

  describe(".duplicate") do
    it('prevents user from adding duplicate rankings and cities') do
      City.clear()
      City.duplicate()
      city = City.new("Pyonchang", 2)
      city.save()
      city = City.new("Pyonchang", 2)
      city.save()
      expect(City.duplicate()).to(eq("You can't enter the same city or ranking twice"))
    end
  end

end #City Class
