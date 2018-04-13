require 'sinatra'
require 'ruby_jokes'
require 'unirest'

#Index Route
#HTTP VERB +ROUTE IN QUOTES

get '/' do 
	@x= joke.get_joke({exclude: ['explicit']})
	erb :index
	
end



#Dynamic Route
# get '/student/:id' do
# 	if params[:id] == '1'
# 	erb :studentone
# else 
# 	erb :studentregular
# 	end
# end

get '/student/:id' do
	@x = params[:id]
end


# get '/student/1' DOESNT WORK
# get '/student/5'