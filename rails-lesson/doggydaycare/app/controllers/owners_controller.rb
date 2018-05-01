class OwnersController < ApplicationController
		# links to my /owners route
	def index
		puts "....................................."
		puts "hello world. i am a the /owners route"
	end

	# links to my /owners/:id route
	def show
		puts "hello, this is my /id route"
	end
end
