class User < ApplicationRecord
  has_secure_password
  has_many :posts

  validates :username, presence: true, uniqueness: true,
            format: {
              with: /\A[a-zA-Z0-9_]+\z/,
              message: "only allows letters, numbers, and underscores"
            }
  validates :email, presence: true, uniqueness: true,
            format: {
              with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
              message: "must be a valid email address"
            }
  validates :password, presence: true, length: { minimum: 6 }
end
