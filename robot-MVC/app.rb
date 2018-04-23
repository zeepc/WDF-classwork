require "sinatra"
require "sinatra/activerecord"
require_relative './models/Robot'


set :database, {adapter: 'postgresql', database: 'bots'}

get '/' do 
	erb :index
end
