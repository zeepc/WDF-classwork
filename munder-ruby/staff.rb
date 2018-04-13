class Staff
	attr_accessor :name, :photo
	def initialize(name,photo)
		@name = name
		@photo = photo
	end
end

dwight = Staff.new("Dwight",url:("https://pbs.twimg.com/profile_images/1863312401/Dwight.jpg"))


