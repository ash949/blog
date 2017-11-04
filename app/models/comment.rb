class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :post, presence: true
  validates :user, uniqueness: { scope: :post, message: ': you have already reviewed this post'}
  validates :body, presence: { message: ': review cannot be empty' }
  validates :rating, numericality: { only_integer: true, message: ": you haven't rated the post" }
end
