class Level < ActiveRecord::Base
  has_many :questions
  validates :number, presence: true, numericality: { greater_than: 0 }, uniqueness: true
end
