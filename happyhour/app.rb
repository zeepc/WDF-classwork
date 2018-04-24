require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"
require_relative './models/attendees'

set :database, {adapter: 'postgresql', database: 'happyhour'}
