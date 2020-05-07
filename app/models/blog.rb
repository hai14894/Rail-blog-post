class Blog < ApplicationRecord
  has_one :category
  has_one_attached :picture
  has_many :comments, dependent: :destroy
end
