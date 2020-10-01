class Post < ApplicationRecord
  belongs_to :user

  validates :title, :description, presence: true
  validates :description, length: { minimum: 25, maximum: 200 }
end
