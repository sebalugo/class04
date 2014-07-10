class Grade < ActiveRecord::Base
	
	belongs_to :student
	has_many :grade
	accepts_nested_attributes_for :student
end
