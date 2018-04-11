class MTA
	def initialize()
		@lines = [6,"N","L"]
		@stops = {}
	end

end

class Lines < MTA
	def initialize(lines, stops)
		@lines = []
		@stops ={}
	end

	def lines_6	
		@stops = ["Grand Central", "33rd", "28th Street", "23rd Street", "Union Square","Astor Place"]

	end

	def lines_N 
		@stops =["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th"]
	end

	def lines_L
		@stops = ["8th Ave", "6th Ave","Union Square"," 3rd Ave","1st Ave"]


end
