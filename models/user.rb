class User < ActiveRecord::Base
  has_many :entries
  validates :text, presence: true
end