class Post < ApplicationRecord
  validates(:user_id, presence: {:message "Must be related with a user")
  validates(:title, presence: {:message "Title is required"}, length: { in: 10..100 })
  validates(:content, presence: {:message "Content can't be empty"}, length: { in: 140..3_140})

  belongs_to :user
  has_many :comments
end
