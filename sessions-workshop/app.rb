require "sinatra"
require "sinatra/activerecord"
require_relative './models/user'


set :database, {adapter: 'postgresql', database: 'lingscars'}
enable :sessions

get '/' do
	erb :index
end

get '/index' do 
	
get '/signup' do

	erb :'/signup'
end

get '/login' do

	erb :'/login'
end

get '/profile' do
    @user = User.find(session[:id])
    erb :profile
end

get '/default' do
    @user = User.find(session[:id])
    erb :default
end

get '/logout' do
	redirect '/index'
end

post '/user/login' do 
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user != nil
        session[:id] = @user.id
        erb :profile
    else   
        #Could not find this user. Redirecting them to the signup page
        redirect '/signup'
    end 
end

post '/user/new' do 
    #Creating a new user based on the values from the form
    @newuser = User.create(name: params[:name], email: params[:email], password: params[:password])
    #Setting the session with key of ID to be equal to the users id
    #Essentialy this "Logs them in"
    session[:id] = @newuser.id
    redirect '/profile'
end

