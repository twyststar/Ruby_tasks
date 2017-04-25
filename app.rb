require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/task")

get('/') do
  @tasks = Task.all()
  erb(:index)
end

post('/tasks_form') do
  description = params.fetch('description')
  task1 = Task.new(description)
  task1.save()
  @tasks = Task.all()
  erb(:index)
end
