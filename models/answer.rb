class Answer < ActiveRecord::Base
  belongs_to :question
  validates :text, presence: true, length: { minimum: 10, maximum: 100 }
end