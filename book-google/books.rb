require 'googlebooks'

class Book
	attr_accessor :title, :author, :photo, :info
	def initialize (title,author,photo,info)
		@title = title
		@author= authors
		@photo = photo
		@info = info
	end
end

