require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require_relative './models/Cat'
require_relative './models/Owner'


set :database, {adapter: 'postgresql', database: 'catdaycare'}

get '/' do 
	erb :index
end

get '/:id' do 
 if params[:id] == "owner"
 @cat_dad = Owner.find(1)
 
 	erb :owner
 elsif 
 	params[:id] == "kitteh"
 	@kitteh = Cat.find(1)

 	erb :kitteh
 	
else
	erb :index
end
end
