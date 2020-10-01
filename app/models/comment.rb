class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :description, presence: true, length: { minimun: 4, maximum: 100 }
  validates_associated :user, :post
end
