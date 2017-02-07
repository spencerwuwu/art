class Product < ApplicationRecord
  mount_uploader :image, ProductImageUploader
  has_many :orders
end
