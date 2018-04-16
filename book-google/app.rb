require 'sinatra'
require 'googlebooks'
# require './books'

get '/' do
	erb :index
end


post '/postroute' do
   
    booksearch = params[:booksearch] 
	book = GoogleBooks.search(booksearch)
	@my_book = book.first
	@title = my_book.title
	@author = my_book.authors
	@photo = my_book.image_link
	@info = my_book.info_link

	erb :postroute
end
