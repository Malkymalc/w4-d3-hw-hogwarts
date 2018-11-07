require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index
get '/students' do
  @houses = House.all
  erb (:index)
end

# new
get '/students/new' do
  @houses = House.all
  erb (:new)
end

# show
get '/students/:id' do
  @student = Student.find(params[:id])
  erb (:show)
end

# create

# edit

# update

# destroy
