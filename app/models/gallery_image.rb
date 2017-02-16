class GalleryImage < ApplicationRecord
  mount_uploader :image, ProductImageUploader
end
