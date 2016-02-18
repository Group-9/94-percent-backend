class Question < ActiveRecord::Base
  belongs_to :level
  validates :text, presence: true, length: { minimum: 10, maximum: 100 }
end
