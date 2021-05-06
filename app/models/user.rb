class User < ApplicationRecord
  validates :username, presence: { message: 'Username is required' }, length: {
    minimum: 2,
    maximum: 15
  }

  has_many :posts
  has_many :comments
end
