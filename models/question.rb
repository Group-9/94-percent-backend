class Question < ActiveRecord::Base
    has_many :answers
    has_many :entries
    belongs_to :level
    validates :text, presence: true, length: { minimum: 10, maximum: 100 }
end
