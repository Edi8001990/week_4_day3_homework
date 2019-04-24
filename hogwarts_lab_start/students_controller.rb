require('sinatra')
require('sinatra/contrib/all')
require( 'pry-byebug' )
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index
get '/students' do
  @students = Student.all()
  erb(:index)
end

# show
get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

# new
get '/students/new' do
  erb(:new)
end

# create
post '/students' do
  @students = Student.new(params)
  @students.save()
  binding.pry
  erb(:create)
end

# edit

# update

# destroy
