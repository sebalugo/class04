class Student < ActiveRecord::Base

	validates_presence_of :name
	has_many :grades
	accepts_nested_attributes_for :grades

	def average
		s= 0.0
		grades.each {|x| 
			if x.score != nil 
			s+=x.score
			end
		}
		if grades.size > 0 
			s/=grades.size
		end
		s
	end	

end
