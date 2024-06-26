class Post < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true, length: { maximum: 256 }
  validates :content, presence: true, length: { maximum: 2048 }
end
