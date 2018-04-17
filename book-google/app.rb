require 'sinatra'
require 'googlebooks'

get '/' do
	erb :index
end


post '/postroute' do
   
    booksearch = params[:booksearch] 
    @booksearch = booksearch
	@book = GoogleBooks.search(booksearch, {:count =>5})
	
	puts @book

	@book.each do |book, value|
	puts book.title
	puts book.authors
	puts book.image_link
	puts book.info_link
end
	erb :postroute
end
