require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_cities')
require('rspec')
require('pry')

get('/') do
  @list = City.all()
  erb(:input) # links to views "input.erb"
end

post('/') do
  name = params["city"] # takes value from web page
  ranking = params["rank"]
  item = City.new(name, ranking) # creates new instance of Class City
  # item.rank = rank #item is the new instance of city, rank is a method from Class City
  item.save() # save is a method from class City
  City.sort

  @list = City.all()
  # binding.pry
  erb(:input) # this points to the input page
end
