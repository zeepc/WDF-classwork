require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"
require_relative './models/attendee'


set :database, {adapter: 'postgresql', database: 'happyhour'}


get '/' do
	@attendees = Attendee.all 
	erb :index	
end

get '/edit' do 
	erb :edit
end


get '/edit' do 
	@current_attendee = Attendee.find(params[:id])
	erb :edit
end

get '/guest' do
	@attendees = Attendee.all 
	erb :guest
end

get '/new' do 
	erb :new
end

get '/guest/new' do
	@attendees = Attendee.all 
	@current_attendee = Attendee.find(params[:id])
	erb :new
end

post '/new' do
	Attendee.create(name:params[:firstname],last_name:params[:lastname],age:params[:age],likes_beer:params[:likesbeer])
	redirect '/'
end

get '/guest/:id/edit' do
	@current_attendee = Attendee.find(params[:id])
    redirect '/edit'
end

put '/guest/:id' do 
    @current_attendee = Attendee.find(params[:id])
    @current_attendee.update(name:params[:firstname],last_name:params[:lastname],age:params[:age],likes_beer:params[:likesbeer])
    redirect '/index'
end

delete '/guest/:id' do 
    Attendee.destroy(params[:id])
    redirect '/index'
end