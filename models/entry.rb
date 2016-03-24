class Entry < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  validates :text, presence: true, length: { maximum: 100 }
end
