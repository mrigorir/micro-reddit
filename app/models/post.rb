class Post < ApplicationRecord
  validates :content, presence: { message: 'Content is required' }, length: {
    minimum: 100,
    maximum: 500
  }

  validates :title, presence: { message: 'Title is required' }, length: {
    minimum: 10,
    maximum: 50
  }

  belongs_to :user
  has_many :comments
end
