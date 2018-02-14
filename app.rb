require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/index')
require('pry')

get('/') do
  erb(:input)
end

post('/output') do # this is one part of the post route, e.g. instead of get('/output')
  @city = params.fetch('city')
  list = City.new(@city)
  erb(:output)
end
