class Comment < ApplicationRecord
  validates :body, presence: { message: 'Body is required' }, length: { minimum: 10, maximum: 700 }

  belongs_to :user
  belongs_to :post
end
