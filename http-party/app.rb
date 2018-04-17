require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do 
	response = HTTParty.get('http://api.wunderground.com/api/023b537b0ab0fdea/hourly/q/NY/New_York.json');
	@current_time = JSON.parse(response.body.to_s)["hourly_forecast"][0]["FCTTIME"]["pretty"]
	@current_weather =JSON.parse(response.body.to_s)["hourly_forecast"][0]["temp"]["english"]
	puts @current_time
	# puts @current_weather
	erb :index
end