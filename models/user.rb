class User < ActiveRecord::Base
  enum gender: [:male, :female, :other]

  enum education: [:uneducated, :primary, :secondary, :diploma, :bachelors, :masters, :doctorate]

  enum employment_status: [:student, :employed, :unemployed]

  has_many :entries
end
