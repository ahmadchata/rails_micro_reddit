class User < ApplicationRecord
	has_many :posts
	has_many :comments

  validates :username, :email, :password, presence: true, uniqueness: true
  validates :username, length: { in: 2..10 }
  validates :email, format: { with: /\S+@\S+/ }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
end
