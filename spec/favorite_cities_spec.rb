require('rspec')
require('./lib/favorite_cities')

describe(City) do
  describe(".all") do
    it("is empty at first") do
      expect(City.all()).to(eq([]))
    end
  end

end
