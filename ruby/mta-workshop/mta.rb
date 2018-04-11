
# LINES DATA
class Lines
	attr_accessor :line,:stops
	
	def initialize(line,stops)
	  @line = line
	  @stops = stops
	end
end

##MTA FUNCTIONALITY NOT DATA

class Mta
	attr_accessor :line, :all_lines
	
	def initialize(line)
		@line = line
		@all_lines = []
	end
	def create_line(line,stops)
		new_line = Lines.new(@line,stops)
		@all_lines.push(new_line)
		# puts "helllllllo i am in create_line"
	end
end

stops = {
	"6":["Grand Central","33rd","28th Street","23rd Street","Union Square","Astor Place"],
	"N":["Times Square","34th Street","28th Street","23rd Street","Union Square", "8th"],
	"L":["8th Ave","6th Ave","Union Square","3rd Ave","1st Ave"]
}


six = Mta.new("6")
n = Mta.new("N")
l = Mta.new("L")
puts six
puts n 
puts l 

six.create_line("6",stops[:"6"])
n.create_line("N",stops[:"N"])
l.create_line("L",stops[:"L"])
six.all_lines
n.all_lines
l.all_lines
