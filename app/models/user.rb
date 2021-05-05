class User < ApplicationRecord
  validates(:username, presence: {message: 'username is required!'}, length:{in: 3..12})

  has_many :posts
  has_many :comments
end
