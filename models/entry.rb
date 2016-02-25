class Entry < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  validates :text, presence: true, length: { minimum: 10, maximum: 100 }
end
