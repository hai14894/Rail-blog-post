class Blog < ApplicationRecord
  belongs_to :category
  has_one_attached :picture
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
end
