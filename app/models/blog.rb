class Blog < ApplicationRecord
  has_one :category
  has_one_attached :picture
end
