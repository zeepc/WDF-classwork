class CourseStudent < ActiveRecord::Base
	belongs_to :student
	has_many :tas
end