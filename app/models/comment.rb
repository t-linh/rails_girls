class Comment < ApplicationRecord
  belongs_to :idea
  belongs_to :user

  mount_uploader :picture, CommentUploader

  validates :user_name, :body, presence: true
end
