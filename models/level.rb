class Level < ActiveRecord::Base
  validates :number, presence: true, numericality: { greater_than: 0 }, uniqueness: true
end
