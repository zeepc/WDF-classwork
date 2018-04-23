require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/cat'

set :database, {adapter: 'postgresql', database: 'catsowners'}

get '/' do 
	# @all_my_cats= Cat.all
	@all_my_cats = Cat.find(1)
	erb :index
	
end