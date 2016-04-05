class Answer < ActiveRecord::Base
  belongs_to :question, dependent: :destroy
  validates :text, presence: true, length: { maximum: 100 }
end
