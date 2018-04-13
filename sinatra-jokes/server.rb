require 'sinatra'
require 'rubyjokes'



get '/' do 
	joke = RubyJoke.new
	@x= joke.get_joke({exclude: ['explicit']})
	erb :index
end


get '/:id' do
   if  params[:id] == "nerdy"
	erb :index
	else
		erb :index
	end
end

