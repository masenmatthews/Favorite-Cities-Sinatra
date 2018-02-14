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
#   describe(".clear") do
#   it("clears all items from the list") do
#     item = Item.new("tacos")
#     item.save()
#     Item.clear()
#     expect(Item.all()).to(eq([]))
#   end
# end

end
