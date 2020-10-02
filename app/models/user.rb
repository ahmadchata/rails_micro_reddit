class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, :email, presence: true, uniqueness: true
  validates :username, length: { in: 2..10 }
  validates :email, format: { with: /\w+@\w+\.{1}[a-zA-Z]{2,}/ }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }
end
