require 'sinatra'
# require './staff.rb'

get '/' do
	erb :home
end

get '/:id' do
	if params[:id] == "about"
		erb :about
	elsif
		params[:id] == "staff"
		erb :staff
	elsif 
		params[:id] == "contact"
		erb :contact
	elsif 
		params[:id] == "dwight"
		erb :dwight
	elsif 
		params[id] == "home"
		erb :home		
	else
		erb :index
	end	
end

# get '/staff' do
# 	if params[:staff] == "staff"
# 		erb :staff
# 	else
# 		erb :index
# 	end	
# end

# get '/staff/:name' do
# 	if params[:name] == "dwight"
# 		erb :dwight
# 	else
# 		erb :index
# 	end	
# end

# get '/:contact' do
# 	if params[:contact] == "contact"
# 		erb :contact
# 	else
# 		erb :index
# 	end	
	
# end

