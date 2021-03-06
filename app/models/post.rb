class Post < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true
end
