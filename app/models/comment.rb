class Comment < ApplicationRecord
  validates :body, presence: { message: 'Body is required' }, length: { minimum: 10, maximum: 700 }
  validates :user_id, presence: { message: 'This is needed to stabilish a relation with user table' }
  validates :post_id, presence: { message: 'This is needed to stabilish a relation with post table' }

  belongs_to :user
  belongs_to :post
end
