require "sinatra"
require "sinatra/activerecord"

#Dont forget to require your models
require_relative './models/course'
require_relative './models/ta'
require_relative './models/instructor'
require_relative './models/student'
require_relative './models/courseStudent'


#The goal of the app is setup the following relationships for our classroom managment app.
#Course have one instructor : one to one
#Course have many students. Students have many Course : many to many
#Course have many TAs : one to many

#Give each table atleast 2-3 properties. Remember to put the FK! Otherwise you wont be able to setup relationships!



set :database, {adapter: 'postgresql', database: 'relations'}

# get '/' do
	
# 	erb :class
# end

#We want to display the following :
#All students part of a specific course
#All instructors part of a course
#All tas part of a course
get '/course/:id' do
    currentcourse = params[:id]
    myCourse = Course.find(currentcourse)
    @allcoursestudents = myCourse.students
    @allinstructors = myCourse.instructor
    @alltas = myCourse.tas
    erb :class
end


get '/students' do
	@students = Student.all
	erb :students
end


get '/students/new' do
	erb :new
end

post '/new' do
	Student.create(name:params[:name], year: params[:year])
	erb :students
end