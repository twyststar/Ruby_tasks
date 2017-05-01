require('capybara/rspec')
require('./app.rb')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('task list path', {:type => :feature}) do
#   it('will display added tasks') do
#     visit('/')
#     fill_in('description', :with=>'wash the dog')
#     click_on('Add task')
#     expect(page).to have_content('wash the dog')
#   end
# end
