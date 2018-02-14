require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_cities')
require('pry')

get('/') do
  @list = City.all()
  erb(:input) # links to views "input.erb"
end

post('/') do
  name = params["city"] # takes value from web page
  item = City.new(name) # creates new instance of City Class
  item.save()
  @list = City.all()
  erb(:output) # this points 
end
