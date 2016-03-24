class User < ActiveRecord::Base
	enum gender: [:male, :female, :other]
	validates :gender, presence: true, numericality: {greater_than:-1, less_than:3}
	
	enum education: [:uneducated, :primary, :secondary, :diploma, :bachelors, :masters, :docotorate]
	validates :education, presence: true, numericality: {greater_than:-1, less_than:7}
	
	enum employment_status: [:student, :employed, :unemployed]
	validates :employment, presence: true, numericality: {greater_than:-1, less_than:3}
	
	has_many :entries
end
