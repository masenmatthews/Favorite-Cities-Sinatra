# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the rectangle path', {:type => :feature}) do
#   it('processes the user entry and returns whether it is a square or not') do
#     visit('/')
#     fill_in('height', :with => '10')
#     fill_in('width', :with => '10')
#     fill_in('length', :with => '10')
#     select "5-20", from: "distance", :match => :first
#     # fill_in('distance', :with => '5-20')
#     click_button('Get My Quote!')
#     expect(page).to have_content('Your box is 10 inches tall, 10 inches wide, and 10 inches long.')
#   end
# end
