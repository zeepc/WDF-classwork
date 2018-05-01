class DogsController < ApplicationController
	# links to my /dogs route
	def index
		puts "hello world. i am a the /dogs route"
	end

	# links to my /dogs/:id route
	def show
		puts "hello, this is my /id route"
	end
end
